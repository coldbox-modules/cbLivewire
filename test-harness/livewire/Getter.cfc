component
    extends="cbLivewire.models.Component"
    accessors="true"
{

    function getName(){
        return "Rubble On The Double";
    }

    function $mount(){
        variables.name = "Blah";
    }

    function $renderIt(){
        return this.$renderView( "_cbLivewire/getter" );
    }

}
