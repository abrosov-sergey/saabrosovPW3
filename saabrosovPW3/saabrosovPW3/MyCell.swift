//
//  MyCell.swift
//  CollectionViewNisWs
//  Created by Dmitry Alexandrov
//
import UIKit

class MyCell: UICollectionViewCell
{
//    let profileImageButton: UIButton = {
//        let control = UIButton()
//        control.backgroundColor = UIColor.yellow //white
//        control.layer.cornerRadius = 4 // 18
//        control.clipsToBounds = false
//        control.setImage(UIImage(named: "Profile"), for: .normal)
//        control.translatesAutoresizingMaskIntoConstraints = false // required
//        return control
//    }()
    
    // by not me :)
    let dateLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        control.textAlignment = .center
        control.textColor = UIColor.red
        var hour: Int  = Int.random(in: 1..<24)
        var minute: Int = Int.random(in: 1..<60)
        var time: String = ""
        if (hour < 10) {
            time += "0"
        }
        time += String(hour)  + ":"
        if (minute < 10) {
            time += "0"
        }
        time += String(minute)
        control.text = time
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
//    let dateLabel: UILabel = {
//        let control = UILabel()
//        control.font = UIFont.systemFont(ofSize: 16, weight: .bold)
//        control.textAlignment = .center
//        control.textColor = UIColor.red
//        control.text = "30"
//        control.translatesAutoresizingMaskIntoConstraints = false // required
//        return control
//    }()
    
    let dayLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 12)
        control.textAlignment = .center
        control.textColor = UIColor.systemBlue
        control.text = "Fri"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()

    let distanceLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 14)
        control.textColor = UIColor.white //lightGray
        control.text = "2000 m"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let toggle: UISwitch = {
        let control = UISwitch()
        control.isOn = Bool.random()
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    func addView() {
        backgroundColor = UIColor.blue //black
        
//      addSubview(profileImageButton)
        addSubview(dateLabel)
//        addSubview(dayLabel)
//        addSubview(distanceLabel)
        addSubview(toggle)


//        profileImageButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
//        profileImageButton.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
//        profileImageButton.heightAnchor.constraint(equalToConstant: 36).isActive = true
//        profileImageButton.widthAnchor.constraint(equalToConstant: 36).isActive = true

        dateLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -6).isActive =  true
//      dateLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive =  true
        dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
                
        //tAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        toggle.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        toggle.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
    }
        
}
