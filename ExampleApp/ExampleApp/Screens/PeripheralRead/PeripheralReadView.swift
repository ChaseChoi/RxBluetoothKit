import UIKit

class PeripheralReadView: UIView {

    init() {
        super.init(frame: .zero)
        backgroundColor = .systemBackground
        setupLayout()
    }

    required init?(coder: NSCoder) { nil }

    // MARK: - Subviews

    let serviceUuidTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = Labels.serviceUuidPlaceholder
        return textField
    }()

    let characteristicUuidTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = Labels.characteristicUuidPlaceholder
        return textField
    }()

    let valueTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Value (String)"
        return textField
    }()

    let advertiseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Advertise", for: .normal)
        button.setImage(UIImage(systemName: "wave.3.right"), for: .normal)
        return button
    }()

    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20.0
        return stackView
    }()

    // MARK: - Private

    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        [serviceUuidTextField, characteristicUuidTextField, valueTextField, advertiseButton].forEach(stackView.addArrangedSubview)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.widthAnchor.constraint(lessThanOrEqualTo: widthAnchor, constant: -32)
        ])
    }

}
