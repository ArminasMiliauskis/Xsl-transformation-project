
package lt.eif.viko.amiliauskis.xslt.soap;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the lt.eif.viko.amiliauskis.xslt.soap package. 
 * &lt;p&gt;An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _AddNewInnPlanet_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "addNewInnPlanet");
    private final static QName _AddNewInnPlanetResponse_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "addNewInnPlanetResponse");
    private final static QName _AddNewOutPlanet_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "addNewOutPlanet");
    private final static QName _AddNewOutPlanetResponse_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "addNewOutPlanetResponse");
    private final static QName _AddNewStar_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "addNewStar");
    private final static QName _AddNewStarResponse_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "addNewStarResponse");
    private final static QName _DeleteAStar_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "deleteAStar");
    private final static QName _DeleteAStarResponse_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "deleteAStarResponse");
    private final static QName _DeletePlanet_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "deletePlanet");
    private final static QName _DeletePlanetResponse_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "deletePlanetResponse");
    private final static QName _GetSolarSystem_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "getSolarSystem");
    private final static QName _GetSolarSystemResponse_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "getSolarSystemResponse");
    private final static QName _SolarSystem_QNAME = new QName("http://soap.xslt.amiliauskis.viko.eif.lt/", "solarSystem");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: lt.eif.viko.amiliauskis.xslt.soap
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link AddNewInnPlanet }
     * 
     */
    public AddNewInnPlanet createAddNewInnPlanet() {
        return new AddNewInnPlanet();
    }

    /**
     * Create an instance of {@link AddNewInnPlanetResponse }
     * 
     */
    public AddNewInnPlanetResponse createAddNewInnPlanetResponse() {
        return new AddNewInnPlanetResponse();
    }

    /**
     * Create an instance of {@link AddNewOutPlanet }
     * 
     */
    public AddNewOutPlanet createAddNewOutPlanet() {
        return new AddNewOutPlanet();
    }

    /**
     * Create an instance of {@link AddNewOutPlanetResponse }
     * 
     */
    public AddNewOutPlanetResponse createAddNewOutPlanetResponse() {
        return new AddNewOutPlanetResponse();
    }

    /**
     * Create an instance of {@link AddNewStar }
     * 
     */
    public AddNewStar createAddNewStar() {
        return new AddNewStar();
    }

    /**
     * Create an instance of {@link AddNewStarResponse }
     * 
     */
    public AddNewStarResponse createAddNewStarResponse() {
        return new AddNewStarResponse();
    }

    /**
     * Create an instance of {@link DeleteAStar }
     * 
     */
    public DeleteAStar createDeleteAStar() {
        return new DeleteAStar();
    }

    /**
     * Create an instance of {@link DeleteAStarResponse }
     * 
     */
    public DeleteAStarResponse createDeleteAStarResponse() {
        return new DeleteAStarResponse();
    }

    /**
     * Create an instance of {@link DeletePlanet }
     * 
     */
    public DeletePlanet createDeletePlanet() {
        return new DeletePlanet();
    }

    /**
     * Create an instance of {@link DeletePlanetResponse }
     * 
     */
    public DeletePlanetResponse createDeletePlanetResponse() {
        return new DeletePlanetResponse();
    }

    /**
     * Create an instance of {@link GetSolarSystem }
     * 
     */
    public GetSolarSystem createGetSolarSystem() {
        return new GetSolarSystem();
    }

    /**
     * Create an instance of {@link GetSolarSystemResponse }
     * 
     */
    public GetSolarSystemResponse createGetSolarSystemResponse() {
        return new GetSolarSystemResponse();
    }

    /**
     * Create an instance of {@link SolarSystem }
     * 
     */
    public SolarSystem createSolarSystem() {
        return new SolarSystem();
    }

    /**
     * Create an instance of {@link Stars }
     * 
     */
    public Stars createStars() {
        return new Stars();
    }

    /**
     * Create an instance of {@link Star }
     * 
     */
    public Star createStar() {
        return new Star();
    }

    /**
     * Create an instance of {@link Planets }
     * 
     */
    public Planets createPlanets() {
        return new Planets();
    }

    /**
     * Create an instance of {@link InnerPlanets }
     * 
     */
    public InnerPlanets createInnerPlanets() {
        return new InnerPlanets();
    }

    /**
     * Create an instance of {@link Planet }
     * 
     */
    public Planet createPlanet() {
        return new Planet();
    }

    /**
     * Create an instance of {@link NaturalSatellites }
     * 
     */
    public NaturalSatellites createNaturalSatellites() {
        return new NaturalSatellites();
    }

    /**
     * Create an instance of {@link NaturalSatellite }
     * 
     */
    public NaturalSatellite createNaturalSatellite() {
        return new NaturalSatellite();
    }

    /**
     * Create an instance of {@link OuterPlanets }
     * 
     */
    public OuterPlanets createOuterPlanets() {
        return new OuterPlanets();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddNewInnPlanet }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AddNewInnPlanet }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "addNewInnPlanet")
    public JAXBElement<AddNewInnPlanet> createAddNewInnPlanet(AddNewInnPlanet value) {
        return new JAXBElement<AddNewInnPlanet>(_AddNewInnPlanet_QNAME, AddNewInnPlanet.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddNewInnPlanetResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AddNewInnPlanetResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "addNewInnPlanetResponse")
    public JAXBElement<AddNewInnPlanetResponse> createAddNewInnPlanetResponse(AddNewInnPlanetResponse value) {
        return new JAXBElement<AddNewInnPlanetResponse>(_AddNewInnPlanetResponse_QNAME, AddNewInnPlanetResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddNewOutPlanet }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AddNewOutPlanet }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "addNewOutPlanet")
    public JAXBElement<AddNewOutPlanet> createAddNewOutPlanet(AddNewOutPlanet value) {
        return new JAXBElement<AddNewOutPlanet>(_AddNewOutPlanet_QNAME, AddNewOutPlanet.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddNewOutPlanetResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AddNewOutPlanetResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "addNewOutPlanetResponse")
    public JAXBElement<AddNewOutPlanetResponse> createAddNewOutPlanetResponse(AddNewOutPlanetResponse value) {
        return new JAXBElement<AddNewOutPlanetResponse>(_AddNewOutPlanetResponse_QNAME, AddNewOutPlanetResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddNewStar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AddNewStar }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "addNewStar")
    public JAXBElement<AddNewStar> createAddNewStar(AddNewStar value) {
        return new JAXBElement<AddNewStar>(_AddNewStar_QNAME, AddNewStar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddNewStarResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AddNewStarResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "addNewStarResponse")
    public JAXBElement<AddNewStarResponse> createAddNewStarResponse(AddNewStarResponse value) {
        return new JAXBElement<AddNewStarResponse>(_AddNewStarResponse_QNAME, AddNewStarResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteAStar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DeleteAStar }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "deleteAStar")
    public JAXBElement<DeleteAStar> createDeleteAStar(DeleteAStar value) {
        return new JAXBElement<DeleteAStar>(_DeleteAStar_QNAME, DeleteAStar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteAStarResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DeleteAStarResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "deleteAStarResponse")
    public JAXBElement<DeleteAStarResponse> createDeleteAStarResponse(DeleteAStarResponse value) {
        return new JAXBElement<DeleteAStarResponse>(_DeleteAStarResponse_QNAME, DeleteAStarResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeletePlanet }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DeletePlanet }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "deletePlanet")
    public JAXBElement<DeletePlanet> createDeletePlanet(DeletePlanet value) {
        return new JAXBElement<DeletePlanet>(_DeletePlanet_QNAME, DeletePlanet.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeletePlanetResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DeletePlanetResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "deletePlanetResponse")
    public JAXBElement<DeletePlanetResponse> createDeletePlanetResponse(DeletePlanetResponse value) {
        return new JAXBElement<DeletePlanetResponse>(_DeletePlanetResponse_QNAME, DeletePlanetResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetSolarSystem }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link GetSolarSystem }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "getSolarSystem")
    public JAXBElement<GetSolarSystem> createGetSolarSystem(GetSolarSystem value) {
        return new JAXBElement<GetSolarSystem>(_GetSolarSystem_QNAME, GetSolarSystem.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetSolarSystemResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link GetSolarSystemResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "getSolarSystemResponse")
    public JAXBElement<GetSolarSystemResponse> createGetSolarSystemResponse(GetSolarSystemResponse value) {
        return new JAXBElement<GetSolarSystemResponse>(_GetSolarSystemResponse_QNAME, GetSolarSystemResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SolarSystem }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link SolarSystem }{@code >}
     */
    @XmlElementDecl(namespace = "http://soap.xslt.amiliauskis.viko.eif.lt/", name = "solarSystem")
    public JAXBElement<SolarSystem> createSolarSystem(SolarSystem value) {
        return new JAXBElement<SolarSystem>(_SolarSystem_QNAME, SolarSystem.class, null, value);
    }

}
