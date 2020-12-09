//
//  ConverterViewController.swift
//  DesafioBTG
//
//  Created by Edgar Sgroi on 08/12/20.
//

import UIKit

final class ConverterViewController: UIViewController, ViewCode {
    private let viewModel: ConverterViewModel
    @AutoLayout var convertedValueLabel: UILabel
    @AutoLayout var sourceValueTextField: UITextField
    @AutoLayout var targetValueTextField: UITextField
    @AutoLayout var sourceCurrencyButton: UIButton
    @AutoLayout var targetCurrencyButton: UIButton
    
    
    init(viewModel: ConverterViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGray6
        setupView()
    }
    
    func addViewToHierarchy() {
        
        view.addSubview(convertedValueLabel)
        view.addSubview(sourceValueTextField)
        view.addSubview(targetValueTextField)
        view.addSubview(sourceCurrencyButton)
        view.addSubview(targetCurrencyButton)
    }
    
    func setUpConstraints() {
        let guide = view.safeAreaLayoutGuide
        
        setLayoutConvertedValueLabel(guide: guide)
        setLayoutSourceValueTextField(guide: guide)
        setLayoutTargetValueTextField(guide: guide)
        setLayoutSourceCurrencyButton(guide: guide)
        setLayoutTargetCurrencyButton(guide: guide)
    }
    
    func setUpAdditionalConfiguration() {
        setStyleConvertedValueLabel()
        setSytleSourceValueTextField()
        setSytleTargetValueTextField()
        setStyleSourceCurrencyButton()
        setStyleTargetCurrencyButton()
    }
    
    // MARK: Layout
    private func setLayoutConvertedValueLabel(guide: UILayoutGuide) {
        NSLayoutConstraint.activate([
            convertedValueLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            convertedValueLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20),
            convertedValueLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            convertedValueLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setLayoutSourceValueTextField(guide: UILayoutGuide) {
        NSLayoutConstraint.activate([
            sourceValueTextField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            sourceValueTextField.topAnchor.constraint(equalTo: convertedValueLabel.bottomAnchor, constant: 20),
            sourceValueTextField.trailingAnchor.constraint(equalTo: guide.centerXAnchor, constant: -10),
            sourceValueTextField.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func setLayoutTargetValueTextField(guide: UILayoutGuide) {
        NSLayoutConstraint.activate([
            targetValueTextField.leadingAnchor.constraint(equalTo: sourceValueTextField.trailingAnchor, constant: 10),
            targetValueTextField.topAnchor.constraint(equalTo: convertedValueLabel.bottomAnchor, constant: 20),
            targetValueTextField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            targetValueTextField.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func setLayoutSourceCurrencyButton(guide: UILayoutGuide) {
        NSLayoutConstraint.activate([
            sourceCurrencyButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            sourceCurrencyButton.topAnchor.constraint(equalTo: sourceValueTextField.bottomAnchor, constant: 20),
            sourceCurrencyButton.trailingAnchor.constraint(equalTo: guide.centerXAnchor, constant: -10),
            sourceCurrencyButton.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func setLayoutTargetCurrencyButton(guide: UILayoutGuide) {
        NSLayoutConstraint.activate([
            targetCurrencyButton.leadingAnchor.constraint(equalTo: sourceCurrencyButton.trailingAnchor, constant: 10),
            targetCurrencyButton.topAnchor.constraint(equalTo: targetValueTextField.bottomAnchor, constant: 20),
            targetCurrencyButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            targetCurrencyButton.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    // MARK: Style
    private func setStyleConvertedValueLabel() {
        convertedValueLabel.layer.masksToBounds = true
        convertedValueLabel.backgroundColor = UIColor.systemGray4
        convertedValueLabel.layer.cornerRadius = 15.0
        convertedValueLabel.font = UIFont(name: "Helvetica Neue", size: 50)
        convertedValueLabel.textAlignment = .center
        convertedValueLabel.text = "2,445.21"
    }
    
    private func setSytleSourceValueTextField() {
        sourceValueTextField.layer.masksToBounds = true
        sourceValueTextField.backgroundColor = UIColor.systemGray4
        sourceValueTextField.layer.cornerRadius = 5.0
        sourceValueTextField.font = UIFont(name: "Helvetica Neue", size: 30)
        sourceValueTextField.textAlignment = .center
        sourceValueTextField.keyboardType = .numberPad
        sourceValueTextField.text = "12000000000000000000"
    }
    
    private func setSytleTargetValueTextField() {
        targetValueTextField.layer.masksToBounds = true
        targetValueTextField.backgroundColor = UIColor.systemGray4
        targetValueTextField.layer.cornerRadius = 5.0
        targetValueTextField.font = UIFont(name: "Helvetica Neue", size: 30)
        targetValueTextField.textAlignment = .center
        targetValueTextField.isUserInteractionEnabled = false
        targetValueTextField.text = "12000000000000000000"
    }
    
    private func setStyleSourceCurrencyButton() {
        sourceCurrencyButton.backgroundColor = UIColor.systemBlue
        sourceCurrencyButton.layer.cornerRadius = 20.0
        sourceCurrencyButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 30)
        sourceCurrencyButton.setTitle("Dólar", for: .normal)
    }
    
    private func setStyleTargetCurrencyButton() {
        targetCurrencyButton.backgroundColor = UIColor.systemBlue
        targetCurrencyButton.layer.cornerRadius = 20.0
        targetCurrencyButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 30)
        targetCurrencyButton.setTitle("Real", for: .normal)
    }
    
}
