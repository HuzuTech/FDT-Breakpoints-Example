package
{
    import com.bit101.components.PushButton;

    import flash.display.Sprite;
    import flash.events.MouseEvent;

    /**
     * (c) HuzuTech 2011
     */
    [SWF(width="640",height="480")]
    public class Main extends Sprite
    {
        public var _button:PushButton;

        public var _currentState:int = 0;
        public static var NOTHING:int =0;
        public static var LOADED:int = 1;
        public static var UNLOADED:int = 2;
        public static var LOADED_AGAIN:int = 3;

        public var externalSWF:ExternalSwf;

        public function Main()
        {
            _button = new PushButton();
            _button.label = "Load Other SWF";

            addChild(_button);
            _button.addEventListener(MouseEvent.CLICK, onButtonClicked);
        }

        private function onButtonClicked(event : MouseEvent) : void
        {
            switch(_currentState)
            {
                case NOTHING:
                    loadSWF();
                    _button.label = "Unload Other SWF";
                    _currentState = LOADED;
                    break;

                case LOADED:
                    unloadSWF();
                    _button.label = "Load Other SWF";
                    _currentState = UNLOADED;
                    break;
                case UNLOADED:
                    loadSWFAgain();
                    _button.label = "SWF has been reloaded";
                    _button.enabled = false;
                    _currentState = LOADED_AGAIN;
                    break;

                default:

            }

        }

        private function loadSWFAgain() : void
        {
        }

        private function unloadSWF() : void
        {
        }

        private function loadSWF() : void
        {
        }
    }
}
