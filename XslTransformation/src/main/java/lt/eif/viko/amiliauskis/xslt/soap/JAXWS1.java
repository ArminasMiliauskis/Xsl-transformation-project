package lt.eif.viko.amiliauskis.xslt.soap;

import javax.xml.ws.Endpoint;

/**
 * Main class of the program responsible for publishing an endpoint. Has a main
 * function which publishes an endpoint for a specified implementation class.
 *
 * @author Arminas Miliauskis
 * @version 1.0-SNAPSHOT
 * @since 1.0-SNAPSHOT
 */
public class JAXWS1 {

    /**
     * Main function which publishes an endpoint for a specified implementation
     * class.
     *
     * @param args accepts a single argument of string type
     * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemServiceImpl
     * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService
     */
    public static void main(String[] args) {

        Endpoint.publish("http://localhost:5045/SolarSystemService/Transform",
                new SolarSystemServiceImpl());

    }
}
