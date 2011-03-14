package
{
    import flash.events.MouseEvent;
    import com.bit101.components.PushButton;

    import flash.display.Sprite;

    /**
     * (c) HuzuTech 2011
     */
    public class ExternalSwf extends Sprite
    {
        public var testButton:PushButton;

        public function ExternalSwf()
        {
            testButton = new PushButton();
            testButton.label = "Click Me!!";
            addChild(testButton);

           testButton.addEventListener(MouseEvent.CLICK, onClick);
        }

        private function onClick(event : MouseEvent) : void
        {
            /*
             * Put a break point on the trace call
             */
            trace("test function called");
        }
    }
}
