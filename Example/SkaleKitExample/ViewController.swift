//
//  ViewController.swift
//  SkaleKitExample
//
//  Created by Ryan on 2019/4/27.
//  Copyright © 2019 Atomax. All rights reserved.
//

import UIKit

import SkaleKit

class ViewController: UIViewController {

    @IBOutlet weak var logLabel: UILabel!
    @IBOutlet weak var realStatusLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    let skale = SKSkale();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        self.skale.isAutoConnectEnabled = false;
        self.skale.delegate = self;
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "Reconnect"), object: nil, queue: OperationQueue.main) { [weak self] (notification) in
            self?.realStatusLabel.text = "Disonnected";
        }
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "Connect"), object: nil, queue: OperationQueue.main) { [weak self] (notification) in
            self?.realStatusLabel.text = "Connected";
        }
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "log"), object: nil, queue: OperationQueue.main) { [weak self] (notification) in
            if let log = notification.object as? String {
                self?.logLabel.text = log;
            }
        }


    
    }
    @IBAction func didClickButton(_ sender: Any) {
        self.skale.showDevicePicker(onViewContoller: self) { (error) in
            print(" $ show picker error -> \(error) ");
        }
    }
    
    @IBAction func didClickNormalDisconnect(_ sender: Any) {
        self.skale.disconnect();
    }
}

extension ViewController : SKSkaleDelegate {
    func skaleDidConnected(_ skale: SKSkale!) {
        print(" $ did connected ");
        self.stateLabel.text = "Connected";
        self.realStatusLabel.text = "Connected";
    }
    
    func skaleDidDisconnected(_ skale: SKSkale!) {
        print(" $ did disconnected ");
        self.stateLabel.text = "Disconnected";
        self.realStatusLabel.text = "Disconnected";
    }
    
    func skaleWeightDidUpdate(_ weight: Float32) {
        //print(" did update  -> \(weight)");
        self.label.text = String(format: "%.1f g", weight);
    }
    
    func skale(_ skale: SKSkale!, didErrorOccur error: Error!) {
        print(" $ did ErrorOccur -> \(error) ");
    }
}

