
/**
 * Please modify this class to meet your needs
 * This class is not complete
 */

package lt.eif.viko.amiliauskis.xslt.soap;

import java.util.logging.Logger;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

/**
 * This class was generated by Apache CXF 3.4.3
 * 2021-04-23T13:22:48.684+03:00
 * Generated source version: 3.4.3
 *
 */

@javax.jws.WebService(
                      serviceName = "SolarSystemServiceImplService",
                      portName = "SolarSystemServiceImplPort",
                      targetNamespace = "http://soap.xslt.amiliauskis.viko.eif.lt/",
                      wsdlLocation = "file:/C:/Users/Arme6/AppData/Local/Temp/tempdir8486268959795648068.tmp/Transform_1.wsdl",
                      endpointInterface = "lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService")

public class SolarSystemServiceImplPortImpl implements SolarSystemService {

    private static final Logger LOG = Logger.getLogger(SolarSystemServiceImplPortImpl.class.getName());

    /* (non-Javadoc)
     * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService#deleteAStar(java.lang.String arg0)*
     */
    public lt.eif.viko.amiliauskis.xslt.soap.SolarSystem deleteAStar(java.lang.String arg0) {
        LOG.info("Executing operation deleteAStar");
        System.out.println(arg0);
        try {
            lt.eif.viko.amiliauskis.xslt.soap.SolarSystem _return = null;
            return _return;
        } catch (java.lang.Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }

    /* (non-Javadoc)
     * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService#addNewOutPlanet(java.lang.String arg0, java.lang.Double arg1, java.lang.String arg2, java.lang.Double arg3, java.lang.Integer arg4, java.lang.String arg5, java.lang.String arg6)*
     */
    public lt.eif.viko.amiliauskis.xslt.soap.SolarSystem addNewOutPlanet(java.lang.String arg0, java.lang.Double arg1, java.lang.String arg2, java.lang.Double arg3, java.lang.Integer arg4, java.lang.String arg5, java.lang.String arg6) {
        LOG.info("Executing operation addNewOutPlanet");
        System.out.println(arg0);
        System.out.println(arg1);
        System.out.println(arg2);
        System.out.println(arg3);
        System.out.println(arg4);
        System.out.println(arg5);
        System.out.println(arg6);
        try {
            lt.eif.viko.amiliauskis.xslt.soap.SolarSystem _return = null;
            return _return;
        } catch (java.lang.Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }

    /* (non-Javadoc)
     * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService#deletePlanet(java.lang.String arg0)*
     */
    public lt.eif.viko.amiliauskis.xslt.soap.SolarSystem deletePlanet(java.lang.String arg0) {
        LOG.info("Executing operation deletePlanet");
        System.out.println(arg0);
        try {
            lt.eif.viko.amiliauskis.xslt.soap.SolarSystem _return = null;
            return _return;
        } catch (java.lang.Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }

    /* (non-Javadoc)
     * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService#addNewStar(java.lang.String arg0, java.lang.Integer arg1, java.lang.String arg2, java.lang.Integer arg3, java.lang.Integer arg4, java.lang.String arg5, java.lang.Long arg6)*
     */
    public lt.eif.viko.amiliauskis.xslt.soap.SolarSystem addNewStar(java.lang.String arg0, java.lang.Integer arg1, java.lang.String arg2, java.lang.Integer arg3, java.lang.Integer arg4, java.lang.String arg5, java.lang.Long arg6) {
        LOG.info("Executing operation addNewStar");
        System.out.println(arg0);
        System.out.println(arg1);
        System.out.println(arg2);
        System.out.println(arg3);
        System.out.println(arg4);
        System.out.println(arg5);
        System.out.println(arg6);
        try {
            lt.eif.viko.amiliauskis.xslt.soap.SolarSystem _return = null;
            return _return;
        } catch (java.lang.Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }

    /* (non-Javadoc)
     * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService#getSolarSystem()*
     */
    public lt.eif.viko.amiliauskis.xslt.soap.SolarSystem getSolarSystem() {
        LOG.info("Executing operation getSolarSystem");
        try {
            lt.eif.viko.amiliauskis.xslt.soap.SolarSystem _return = null;
            return _return;
        } catch (java.lang.Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }

    /* (non-Javadoc)
     * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService#addNewInnPlanet(java.lang.String arg0, java.lang.Double arg1, java.lang.String arg2, java.lang.Double arg3, java.lang.Integer arg4, java.lang.String arg5, java.lang.String arg6)*
     */
    public lt.eif.viko.amiliauskis.xslt.soap.SolarSystem addNewInnPlanet(java.lang.String arg0, java.lang.Double arg1, java.lang.String arg2, java.lang.Double arg3, java.lang.Integer arg4, java.lang.String arg5, java.lang.String arg6) {
        LOG.info("Executing operation addNewInnPlanet");
        System.out.println(arg0);
        System.out.println(arg1);
        System.out.println(arg2);
        System.out.println(arg3);
        System.out.println(arg4);
        System.out.println(arg5);
        System.out.println(arg6);
        try {
            lt.eif.viko.amiliauskis.xslt.soap.SolarSystem _return = null;
            return _return;
        } catch (java.lang.Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }

}