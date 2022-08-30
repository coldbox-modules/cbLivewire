component extends="cbwire.models.Component" {

    data = {
        "messages": []
    };

    function loadMessages() {
        // Simulate something that takes 400 ms
        sleep( 400 );
        data.messages = [
            {
                message: "message1"
            },
            {
                message: "message2"
            }
        ];
    }
}