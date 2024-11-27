//
//  ChooseDateViewController.swift
//  Stepify
//
//  Created by Shailendu on 11/06/24.
//

import UIKit

protocol ChooseDateViewControllerDelegate: AnyObject {
    func didTappedOnSaveButton(_ date: Date)
}

class ChooseDateViewController: UIViewController {
    static let storyboardID: String = String(describing: ChooseDateViewController.self)
    
    weak var delegate: ChooseDateViewControllerDelegate?
    
    @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureDatePicker()
    }
    
    private func configureDatePicker() {
        self.datePicker.maximumDate = Date()
    }

    
    @IBAction func didTappedSaveDateButtton(_ sender: UIButton) {
        let date = datePicker.date
        delegate?.didTappedOnSaveButton(date)
        self.navigationController?.popViewController(animated: true)
    }
}
