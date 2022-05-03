//
//  ViewController.swift
//  AppEventCount
//
//  Created by Daria Salamakha on 09.02.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlet
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
    //MARK: - Properties
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
   
    //MARK: - Method
    func updateView(){
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "The App has connecting \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectToLabel.text = "The App will connect  \(willConnectCount) time(s)"
        sceneDidBecomeActiveLabel.text = "The App was active  \(didBecomeActiveCount) time(s)"
        sceneWillResignActiveLabel.text = "The App will resign active \(willResignActiveCount) time(s)"
        sceneWillEnterForegroundLabel.text = "The App will enter foreground \(willEnterForegroundCount) time(s)"
        sceneDidEnterBackgroundLabel.text = "The App has entered background \(didEnterBackgroundCount) time(s)"
    }
    
    
}

