

# InfiniteNavigationController-iOS

![Logo](https://github.com/allanragec/InfiniteNavigationController-iOS/raw/master/infinite.png)

## Library to keep the stack of view controllers limited in memory. Make your app with infinite navigation with low memory use. Allows the users to create a state model of your view controller, making possible destroy and reconstruct when is necessary.

### How to use ?

You only need to use the InfiniteNavigationController and need to implement the StackProcotol on your view controllers like:
    
    extension ViewController: StackProtocol {
        func getStateModel() -> StackItem {
            return StackItem(viewController: { stateModel in
                if let (title, sliderValue) = stateModel as? (String, Float) {
                    print("""
                        You can get your stateModel to
                        instantiate your ViewController if you are using XIB's
                        \(title), \(sliderValue)
                        """)
                }
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                
                return storyboard.instantiateViewController(withIdentifier: "defaultViewController")
            }, stateModel: (title, slider.value))
        }
        
        func setState(model: StackItem) {
            if let (text, value) = model.stateModel as? (String, Float) {
                title = text
                sliderValue = value
            }
        }
    }

- On getStateModel() method, you need return a StackItem object. The StackItem has two parameters: 
    - A block to return your view controller (this allow the users to use Storyboard or XIB's). Is strongly recomended to avoid the access of your current instance, to avoid memory leaks. 
    - A state model, to persist any state that user want.

- setState() method is optional, you implement if you need to restore the state of your view again.


### Setup

#### CocoaPods

1. You need CocoaPods installed.

2. Create a file called `Podfile` in your project and add the following line:

    ```ruby
    pod 'InfiniteNavigationController-iOS'
    ```

3. Run `$ pod install`.

4. This will download the latest version of the SDK and create a .xcworkspace
file, use that file to open your project in Xcode.