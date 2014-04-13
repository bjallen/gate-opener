class OpenerController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    @add_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @add_button.setTitle("Go!", forState:UIControlStateNormal)
    @add_button.sizeToFit
    @add_button.frame = CGRect.new(
      [
        self.view.frame.size.width / 2 - @add_button.frame.size.width,
        self.view.frame.size.height / 2 - @add_button.frame.size.height
      ],
      @add_button.frame.size)
    self.view.addSubview(@add_button)
    @add_button.addTarget(
      self, action:"trigger_gate", forControlEvents:UIControlEventTouchUpInside)
  end

  def trigger_gate
    BW::HTTP.get("http://192.168.1.93:8888")
  end
end