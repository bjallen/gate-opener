class OpenerController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    @gate_button = FUIButton.buttonWithType(UIButtonTypeRoundedRect)

    @gate_button.buttonColor = UIColor.turquoiseColor
    @gate_button.shadowColor = UIColor.greenSeaColor
    @gate_button.cornerRadius = 6.0
    @gate_button.titleLabel.font = UIFont.boldFlatFontOfSize(16)

    @gate_button.setTitleColor(UIColor.cloudsColor, forState:UIControlStateNormal)
    @gate_button.setTitleColor(UIColor.cloudsColor, forState: UIControlStateHighlighted)

    
    # @gate_button.setTitle("Go!", forState:UIControlStateNormal)
    @gate_button.sizeToFit
    @gate_button.frame = CGRect.new(
      [
        self.view.frame.size.width / 2 - 150 / 2,
        100
      ],
      [150, 100])
    self.view.addSubview(@gate_button)
    @gate_button.addTarget(
      self, action:"trigger_gate", forControlEvents:UIControlEventTouchUpInside)
  end

  def trigger_gate
    BW::HTTP.get("http://192.168.1.93:8888")
  end
end