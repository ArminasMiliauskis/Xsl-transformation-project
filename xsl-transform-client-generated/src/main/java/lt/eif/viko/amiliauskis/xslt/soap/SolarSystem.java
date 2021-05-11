
package lt.eif.viko.amiliauskis.xslt.soap;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * &lt;p&gt;Java class for solarSystem complex type.
 * 
 * &lt;p&gt;The following schema fragment specifies the expected content contained within this class.
 * 
 * &lt;pre&gt;
 * &amp;lt;complexType name="solarSystem"&amp;gt;
 *   &amp;lt;complexContent&amp;gt;
 *     &amp;lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&amp;gt;
 *       &amp;lt;sequence&amp;gt;
 *         &amp;lt;element name="Age" type="{http://www.w3.org/2001/XMLSchema}double" minOccurs="0"/&amp;gt;
 *         &amp;lt;element name="Age-unit" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&amp;gt;
 *         &amp;lt;element name="Location" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&amp;gt;
 *         &amp;lt;element name="Stars" type="{http://soap.xslt.amiliauskis.viko.eif.lt/}stars" maxOccurs="unbounded" minOccurs="0"/&amp;gt;
 *         &amp;lt;element name="Planets" type="{http://soap.xslt.amiliauskis.viko.eif.lt/}planets" maxOccurs="unbounded" minOccurs="0"/&amp;gt;
 *       &amp;lt;/sequence&amp;gt;
 *     &amp;lt;/restriction&amp;gt;
 *   &amp;lt;/complexContent&amp;gt;
 * &amp;lt;/complexType&amp;gt;
 * &lt;/pre&gt;
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "solarSystem", propOrder = {
    "age",
    "ageUnit",
    "location",
    "stars",
    "planets"
})
public class SolarSystem {

    @XmlElement(name = "Age")
    protected Double age;
    @XmlElement(name = "Age-unit")
    protected String ageUnit;
    @XmlElement(name = "Location")
    protected String location;
    @XmlElement(name = "Stars")
    protected List<Stars> stars;
    @XmlElement(name = "Planets")
    protected List<Planets> planets;

    /**
     * Gets the value of the age property.
     * 
     * @return
     *     possible object is
     *     {@link Double }
     *     
     */
    public Double getAge() {
        return age;
    }

    /**
     * Sets the value of the age property.
     * 
     * @param value
     *     allowed object is
     *     {@link Double }
     *     
     */
    public void setAge(Double value) {
        this.age = value;
    }

    /**
     * Gets the value of the ageUnit property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAgeUnit() {
        return ageUnit;
    }

    /**
     * Sets the value of the ageUnit property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAgeUnit(String value) {
        this.ageUnit = value;
    }

    /**
     * Gets the value of the location property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLocation() {
        return location;
    }

    /**
     * Sets the value of the location property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLocation(String value) {
        this.location = value;
    }

    /**
     * Gets the value of the stars property.
     * 
     * &lt;p&gt;
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a &lt;CODE&gt;set&lt;/CODE&gt; method for the stars property.
     * 
     * &lt;p&gt;
     * For example, to add a new item, do as follows:
     * &lt;pre&gt;
     *    getStars().add(newItem);
     * &lt;/pre&gt;
     * 
     * 
     * &lt;p&gt;
     * Objects of the following type(s) are allowed in the list
     * {@link Stars }
     * 
     * 
     */
    public List<Stars> getStars() {
        if (stars == null) {
            stars = new ArrayList<Stars>();
        }
        return this.stars;
    }

    /**
     * Gets the value of the planets property.
     * 
     * &lt;p&gt;
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a &lt;CODE&gt;set&lt;/CODE&gt; method for the planets property.
     * 
     * &lt;p&gt;
     * For example, to add a new item, do as follows:
     * &lt;pre&gt;
     *    getPlanets().add(newItem);
     * &lt;/pre&gt;
     * 
     * 
     * &lt;p&gt;
     * Objects of the following type(s) are allowed in the list
     * {@link Planets }
     * 
     * 
     */
    public List<Planets> getPlanets() {
        if (planets == null) {
            planets = new ArrayList<Planets>();
        }
        return this.planets;
    }

}
