
import UIKit
class CustomTableViewCell: UITableViewCell {
    static let identifier = "CustomTableViewCell"
    private let _switch: UISwitch = {
        let _switch = UISwitch()
        _switch.onTintColor = .blue
        _switch.isOn = true
        return _switch
    }()
    private let myImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "cat1")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    private let myLable: UILabel = {
        let lable = UILabel()
        lable.textColor = .white
        lable.font = .systemFont(ofSize: 17, weight: .bold)
        
        return lable
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        contentView.addSubview(_switch)
        contentView.addSubview(myLable)
        contentView.addSubview(myImageView)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func configure (text: String, imageName: String){
        myLable.text = text
        myImageView.image = UIImage(named: imageName)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        myLable.text = nil
        myImageView.image = nil
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
    let imageSize = contentView.frame.size.height - 6
        
    let switchSize = _switch.sizeThatFits(contentView.frame.size)
        
        _switch.frame = CGRect(x: 5,
                               y: (contentView.frame.size.height - switchSize.height)/2,
                               width: switchSize.width,
                               height: switchSize.height)
        
        myLable.frame = CGRect(x: 10 + _switch.frame.size.width,
                               y: 0,
                               width: contentView.frame.size.width - 10 - _switch.frame.size.width - imageSize,
                               height: contentView.frame.size.height)
        
        myImageView.frame = CGRect(x: contentView.frame.size.width - imageSize, y: 3, width: imageSize, height: imageSize)
    }
}
