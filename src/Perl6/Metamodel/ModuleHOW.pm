class Perl6::Metamodel::ModuleHOW
    does Perl6::Metamodel::Naming
    does Perl6::Metamodel::Versioning
{
    has $!composed;

    method new_type(:$name = '<anon>', :$repr = 'P6opaque', :$ver, :$auth) {
        my $metaclass := self.new(:name($name), :ver($ver), :auth($auth));
        pir::repr_type_object_for__PPS($metaclass, $repr);
    }

    method compose($obj) {
        $!composed := 1;
    }
    
    method is_composed($obj) {
        $!composed
    }
}