package lt.eif.viko.amiliauskis.xslt.soap;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.xml.bind.JAXBException;
import lt.eif.viko.amiliauskis.jaxb.model.Planet;
import lt.eif.viko.amiliauskis.jaxb.model.SolarSystem;
import lt.eif.viko.amiliauskis.jaxb.model.Star;
import lt.eif.viko.amiliauskis.jaxb.transform.Jaxb;

/**
 * Transformation service implementation class for implementing methods from an
 * interface class. Has six methods used for manipulating the data model -
 * adding or removing an object from it and for returning an XML schema.
 *
 * @author Arminas Miliauskis
 * @version 1.0-SNAPSHOT
 * @since 1.0-SNAPSHOT
 * @see lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService
 */
@WebService(endpointInterface
        = "lt.eif.viko.amiliauskis.xslt.soap.SolarSystemService")
public class SolarSystemServiceImpl implements SolarSystemService {

    /**
     * Overridden method used for returning whole solar system XML schema for
     * the client. Creates new JAXB and Solar system objects and uses JAXB
     * unmarshalling tool to transform XML document to POJO. Then outputs the
     * generated Object.
     *
     * @return solarSystem object
     */
    @Override
    public SolarSystem getSolarSystem() {

        Jaxb jaxb = new Jaxb();
        SolarSystem solarSystem = new SolarSystem();

        try {
            solarSystem = jaxb.transformToPOJO("SolarSystemFromPOJO.xml");
        } catch (JAXBException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return solarSystem;

    }

    /**
     * Overridden method used for adding a new planet object to inner planets
     * list. Creates a new planet object and adds values to it from the client.
     * Then creates new SolarSystem and JAXB objects. Using JAXB unmarshalling
     * tool transforms Solar system XML document to POJO and adds the new planet
     * to it. After that transforms the data model back to XML and outputs it
     * for the client.
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
    @Override
    public SolarSystem addNewInnPlanet(String name, Double mass, String massUnit, Double volume, Integer velocity, String velocityUnit, String type) {

        Planet planet = new Planet();
        planet.setName(name);
        planet.setMassUnit(massUnit);
        planet.setVolume(volume);
        planet.setVelocity(velocity);
        planet.setVelocityUnit(velocityUnit);
        planet.setType(type);
        planet.setMass(mass);

        Jaxb jaxb = new Jaxb();
        SolarSystem solarSystem = new SolarSystem();

        try {
            solarSystem = jaxb.transformToPOJO("SolarSystemFromPOJO.xml");
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        solarSystem.getPlanets().get(0).getInnerPlanets().get(0)
                .getPlanet().add(planet);
        
         

        try {
            jaxb.transformToXML(solarSystem);
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return solarSystem;
    }

    /**
     * Overridden method used for deleting a planet specified by name. Creates
     * new Solar system and JAXB objects and using JAXB unmarshalling tool
     * transforms Solar system XML document to POJO. Filters out the planet
     * which has the name attribute specified by the client and is afterwards
     * transformed back to XML schema and returned for the client.
     *
     * @param name string
     * @return solarSystem object
     */
    @Override
    public SolarSystem deletePlanet(String name) {

        SolarSystem solarSystem = new SolarSystem();
        Jaxb jaxb = new Jaxb();
        try {
            solarSystem = jaxb.transformToPOJO("SolarSystemFromPOJO.xml");
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        solarSystem.getPlanets().get(0).getInnerPlanets().get(0).getPlanet().removeIf(m -> m.getName().equals(name));
        
        try {
            jaxb.transformToXML(solarSystem);
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return solarSystem;
    }

    /**
     *
     * Overridden method used for adding a new planet object to outer planets
     * list. Creates a new planet object and adds values to it from the client.
     * Then creates new SolarSystem and JAXB objects. Using JAXB unmarshalling
     * tool transforms Solar system XML document to POJO and adds the new planet
     * to it. After that transforms the data model back to XML and outputs it
     * for the client.
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
    @Override
    public SolarSystem addNewOutPlanet(String name, Double mass, String massUnit, Double volume, Integer velocity, String velocityUnit, String type) {
        Planet planet1 = new Planet();
        planet1.setName(name);
        planet1.setMassUnit(massUnit);
        planet1.setVolume(volume);
        planet1.setVelocity(velocity);
        planet1.setVelocityUnit(velocityUnit);
        planet1.setType(type);
        planet1.setMass(mass);

        Jaxb jaxb = new Jaxb();
        SolarSystem solarSystem = new SolarSystem();

        try {
            solarSystem = jaxb.transformToPOJO("SolarSystemFromPOJO.xml");
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        solarSystem.getPlanets().get(0).getOuterPlanets().get(0)
                .getPlanet().add(planet1);

        try {
            jaxb.transformToXML(solarSystem);
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return solarSystem;
    }

    /**
     * Overridden method used for adding a new star object to the data model.
     * Creates a new star object and adds values to it from the client. Then
     * creates new SolarSystem and JAXB objects. Using JAXB unmarshalling tool
     * transforms Solar system XML document to POJO and adds the new star to
     * it. After that transforms the data model back to XML and outputs it for
     * the client.
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
    @Override
    public SolarSystem addNewStar(String name, Integer mass, String massUnit, Integer volume, Integer velocity, String velocityUnit, Long age) {

        Star star = new Star();
        star.setName(name);
        star.setMassUnit(massUnit);
        star.setVolume(volume);
        star.setVelocity(velocity);
        star.setVelocityUnit(velocityUnit);
        star.setAge(age);
        star.setMass(mass);

        Jaxb jaxb = new Jaxb();
        SolarSystem solarSystem = new SolarSystem();

        try {
            solarSystem = jaxb.transformToPOJO("SolarSystemFromPOJO.xml");
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        solarSystem.getStars().get(0).getStar().add(star);

        try {
            jaxb.transformToXML(solarSystem);
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return solarSystem;
    }
    
    /**
     * Overridden method used for deleting a star specified by name. Creates
     * new Solar system and JAXB objects and using JAXB unmarshalling tool
     * transforms Solar system XML document to POJO. Filters out the star
     * which has the name attribute specified by the client and is afterwards
     * transformed back to XML schema and returned for the client.
     * 
     * @param name string
     * @return solarSystem object
     */
    @Override
    public SolarSystem deleteAStar(String name) {

        SolarSystem solarSystem = new SolarSystem();
        Jaxb jaxb = new Jaxb();
        try {
            solarSystem = jaxb.transformToPOJO("SolarSystemFromPOJO.xml");
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        solarSystem.getStars().get(0).getStar().removeIf(m -> m.getName().equals(name));
        
        try {
            jaxb.transformToXML(solarSystem);
        } catch (JAXBException | IOException ex) {
            Logger.getLogger(SolarSystemServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return solarSystem;
    }

}
