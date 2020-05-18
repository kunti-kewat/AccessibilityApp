

import UIKit

class AddRatingViewController: UIViewController {
  private (set) var rating: Int = 0

  @IBOutlet weak var ratingKnobContainer: UIView!
  @IBOutlet weak var ratingKnob: Knob!
  @IBOutlet weak var ratingLabel: UILabel!
  @IBOutlet weak var addRatingButton: UIButton!
  @IBOutlet weak var cancelButton: UIButton!

  var frameForAccessibilityElement: CGRect {
    return ratingKnobContainer.convert(ratingKnob.frame, to: nil)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    ratingKnob.lineWidth = 6
    ratingKnob.pointerLength = 12

    ratingKnob.setValue(Float(rating))
    setRating(ratingKnob.value)

    let ratingElement = RatingKnobAccessibilityElement(accessibilityContainer: self)
    accessibilityElements = [cancelButton, ratingElement, addRatingButton].compactMap { $0 }
    UIAccessibility.post(notification: .screenChanged, argument: ratingElement)
  }

  func setRating(_ value: Float) {
    rating = Int(value.rounded())
    ratingLabel.text = "\(rating)"
  }

  @IBAction func knobValueChanged(_ sender: Knob) {
    setRating(sender.value)
  }

  func incrementAction() {
    ratingKnob.setValue(ratingKnob.value + 1)
    setRating(ratingKnob.value)
  }

  func decrementAction() {
    ratingKnob.setValue(ratingKnob.value - 1)
    setRating(ratingKnob.value)
  }
}

class RatingKnobAccessibilityElement: UIAccessibilityElement {
  override init(accessibilityContainer container: Any) {
    super.init(accessibilityContainer: container)
    accessibilityLabel = "Rating selector"
    accessibilityHint = "Adjust your rating of this amp"
    accessibilityTraits = [.adjustable]
  }

  var ratingViewController: AddRatingViewController? {
    return accessibilityContainer as? AddRatingViewController
  }

  override var accessibilityValue: String? {
    get {
      guard let rating = ratingViewController?.rating else {
        return super.accessibilityValue
      }

      return "\(rating)"
    }

    set {
      super.accessibilityValue = newValue
    }
  }

  override var accessibilityFrameInContainerSpace: CGRect {
    get {
      guard let frame = ratingViewController?.frameForAccessibilityElement else {
        return super.accessibilityFrameInContainerSpace
      }

      return frame
    }

    set {
      super.accessibilityFrameInContainerSpace = newValue
    }
  }

  override func accessibilityIncrement() {
    ratingViewController?.incrementAction()
    if let rating = ratingViewController?.rating, rating == 11 {
      let message = NSAttributedString(string: "Whoa! This one goes to 11!", attributes: [.accessibilitySpeechPitch: 0.1, .accessibilitySpeechQueueAnnouncement: true])
      UIAccessibility.post(notification: .announcement, argument: message)
    }
  }

  override func accessibilityDecrement() {
    ratingViewController?.decrementAction()
  }
}
