//
//  ViewController.swift
//  el667_p2
//
//  Created by Ellen Li on 3/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    var foodLabel = UILabel()
    var foodImageView = UIImageView()
    var foodItem = UITextField()
    var placeRest = UITextField()
    var logButton = UIButton()
    var foodTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBrown
        
        foodLabel.text = "What I Ate Today!"
        foodLabel.textColor = .white
        foodLabel.font = .systemFont(ofSize: 35, weight: .bold)
        foodLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(foodLabel)
        
        foodImageView.image = UIImage(named: "eggtoast")
        foodImageView.contentMode = .scaleToFill
        foodImageView.clipsToBounds = true
        foodImageView.layer.cornerRadius = 5
        foodImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(foodImageView)
        
        foodItem.placeholder = "What did you eat?"
        foodItem.textColor = .darkGray
        foodItem.backgroundColor = .white
        foodItem.borderStyle = UITextField.BorderStyle.roundedRect
        foodItem.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(foodItem)
        
        placeRest.placeholder = "Where did you eat?"
        placeRest.textColor = .darkGray
        placeRest.backgroundColor = .white
        placeRest.borderStyle = UITextField.BorderStyle.roundedRect
        placeRest.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(placeRest)
        
        logButton.setTitle("Log it!", for: .normal)
        logButton.setTitleColor(.white, for: .normal)
        logButton.translatesAutoresizingMaskIntoConstraints = false
        logButton.backgroundColor = .black
        logButton.addTarget(self, action: #selector(addFood), for: .touchUpInside)
        
        foodTextView.text = nil
        foodTextView.font = .systemFont(ofSize: 22)
        foodTextView.textColor = .brown
        foodTextView.backgroundColor = .white
        foodTextView.layer.cornerRadius = 10
        foodTextView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(foodTextView)
        
        view.addSubview(logButton)
        
        let imageView = UIImageView(frame: view.bounds)
            imageView.image = UIImage(named: "eggtoast")
            view.addSubview(imageView)
        
        //setupConstraints()
    }


    
    
    @objc func addFood() {
        if let food = foodItem.text {
            foodTextView.text = foodTextView.text + food
        }
        if let place = placeRest.text {
            foodTextView.text = foodTextView.text + " in " + place + "\r\n"
        }
        foodItem.text = nil
        placeRest.text = nil

    }

}
