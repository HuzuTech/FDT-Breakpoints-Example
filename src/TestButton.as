package
{
    import flash.events.MouseEvent;
    import com.bit101.components.PushButton;

    /**
     * (c) HuzuTech 2011
     */
    public class TestButton extends PushButton
    {
        public function TestButton()
        {
            addEventListener(MouseEvent.CLICK, onClicked);
        }

        private function onClicked(event : MouseEvent) : void
        {
            trace("test function called");
        }
    }
}
