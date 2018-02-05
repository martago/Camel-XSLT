package de.janosch.camel;

import org.apache.camel.ValidationException;
import org.apache.camel.builder.RouteBuilder;

public class MyRouteBuilder extends RouteBuilder {

    public void configure() {

        from("file:src/data?noop=true&include=.*.xml")
            .onException(ValidationException.class)
                .to("file:target/messages/validationerror")
                .handled(true)
            .end()
            .to("validator:person.xsd")
            .filter(xpath("//firstName = 'Max'"))
                .to("xslt:transform.xsl")
                .to("file:target/messages")
            .end();
    }

}
