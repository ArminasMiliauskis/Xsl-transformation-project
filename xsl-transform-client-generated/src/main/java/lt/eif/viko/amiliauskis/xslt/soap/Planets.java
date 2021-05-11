
package lt.eif.viko.amiliauskis.xslt.soap;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * &lt;p&gt;Java class for planets complex type.
 * 
 * &lt;p&gt;The following schema fragment specifies the expected content contained within this class.
 * 
 * &lt;pre&gt;
 * &amp;lt;complexType name="planets"&amp;gt;
 *   &amp;lt;complexContent&amp;gt;
 *     &amp;lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&amp;gt;
 *       &amp;lt;sequence&amp;gt;
 *         &amp;lt;element name="Inner-planets" type="{http://soap.xslt.amiliauskis.viko.eif.lt/}innerPlanets" maxOccurs="unbounded" minOccurs="0"/&amp;gt;
 *         &amp;lt;element name="Outer-planets" type="{http://soap.xslt.amiliauskis.viko.eif.lt/}outerPlanets" maxOccurs="unbounded" minOccurs="0"/&amp;gt;
 *       &amp;lt;/sequence&amp;gt;
 *     &amp;lt;/restriction&amp;gt;
 *   &amp;lt;/complexContent&amp;gt;
 * &amp;lt;/complexType&amp;gt;
 * &lt;/pre&gt;
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "planets", propOrder = {
    "innerPlanets",
    "outerPlanets"
})
public class Planets {

    @XmlElement(name = "Inner-planets")
    protected List<InnerPlanets> innerPlanets;
    @XmlElement(name = "Outer-planets")
    protected List<OuterPlanets> outerPlanets;

    /**
     * Gets the value of the innerPlanets property.
     * 
     * &lt;p&gt;
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a &lt;CODE&gt;set&lt;/CODE&gt; method for the innerPlanets property.
     * 
     * &lt;p&gt;
     * For example, to add a new item, do as follows:
     * &lt;pre&gt;
     *    getInnerPlanets().add(newItem);
     * &lt;/pre&gt;
     * 
     * 
     * &lt;p&gt;
     * Objects of the following type(s) are allowed in the list
     * {@link InnerPlanets }
     * 
     * 
     */
    public List<InnerPlanets> getInnerPlanets() {
        if (innerPlanets == null) {
            innerPlanets = new ArrayList<InnerPlanets>();
        }
        return this.innerPlanets;
    }

    /**
     * Gets the value of the outerPlanets property.
     * 
     * &lt;p&gt;
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a &lt;CODE&gt;set&lt;/CODE&gt; method for the outerPlanets property.
     * 
     * &lt;p&gt;
     * For example, to add a new item, do as follows:
     * &lt;pre&gt;
     *    getOuterPlanets().add(newItem);
     * &lt;/pre&gt;
     * 
     * 
     * &lt;p&gt;
     * Objects of the following type(s) are allowed in the list
     * {@link OuterPlanets }
     * 
     * 
     */
    public List<OuterPlanets> getOuterPlanets() {
        if (outerPlanets == null) {
            outerPlanets = new ArrayList<OuterPlanets>();
        }
        return this.outerPlanets;
    }

}
