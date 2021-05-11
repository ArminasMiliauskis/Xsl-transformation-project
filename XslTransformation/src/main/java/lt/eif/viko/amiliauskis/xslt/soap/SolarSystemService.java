package lt.eif.viko.amiliauskis.xslt.soap;

import javax.jws.WebMethod;
import javax.jws.WebService;
import lt.eif.viko.amiliauskis.jaxb.model.SolarSystem;

/**
 * Interface class for describing behaviour of methods used in
 * TransformationServiceImpl class. Contains various web methods for
 * manipulating solar system data model, adding objects to it, deleting them and
 * returning XML schema to the client.
 *
 * @author Arminas Miliauskis
 * @version 1.0-SNAPSHOT
 * @since 1.0-SNAPSHOT
 * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemServiceImpl
 */
@WebService(name = "SolarSystemService")
public interface SolarSystemService {

    /**
     * getSolarSystem method used for returning solar system XML schema to the
     * client.
     *
     * @return solarSystem object
     */
    @WebMethod
    SolarSystem getSolarSystem();
    
    /**
     * addNewInnPlanet method used for adding a new planet object to inner planets
     * list
     * 
     * @param name string
     * @param mass double
     * @param massUnit string
     * @param volume double
     * @param velocity integer
     * @param velocityUnit string
     * @param type string
     * @return solarSystem object 
     */
    @WebMethod
    SolarSystem addNewInnPlanet(String name,
            Double mass,
            String massUnit,
            Double volume,
            Integer velocity,
            String velocityUnit,
            String type);
    
    /**
     * deletePlanet method used for deleting a planet specified by name.
     * 
     * @param name string
     * @return solarSystem object
     */
    @WebMethod
    SolarSystem deletePlanet(String name);
    
    /**
     * addNewOutPlanet method used for adding a new planet object to outer planets
     * list
     * 
     * @param name string
     * @param mass double
     * @param massUnit string
     * @param volume double
     * @param velocity integer
     * @param velocityUnit string
     * @param type string
     * @return solarSystem object 
     */
    @WebMethod
    SolarSystem addNewOutPlanet(String name,
            Double mass,
            String massUnit,
            Double volume,
            Integer velocity,
            String velocityUnit,
            String type);
    
    /**
     * addNewStar method used for adding a new star object to the data model.
     * 
     * @param name string
     * @param mass integer
     * @param massUnit string
     * @param volume integer
     * @param velocity integer
     * @param velocityUnit string
     * @param age long
     * @return solarSystem object
     */
    @WebMethod
    SolarSystem addNewStar(String name,
            Integer mass,
            String massUnit,
            Integer volume,
            Integer velocity,
            String velocityUnit,
            Long age);
    
    /**
     * deleteAStar method used for deleting a star specified by name.
     * 
     * @param name string
     * @return solarSystem object
     */
    @WebMethod
    SolarSystem deleteAStar(String name);
}
