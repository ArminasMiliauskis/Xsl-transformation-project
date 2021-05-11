package lt.eif.viko.amiliauskis.xslt;

import java.io.File;
import javax.xml.XMLConstants;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 * XmlToHtml class Responsible for performing transformation of XML data to HTML
 * format. Has a single void method used for transformation.
 *
 * @author Arminas Miliauskis
 * @version 1.0-SNAPSHOT
 * @since 1.0-SNAPSHOT
 */
public class XmlToHtml {

    /**
     * Void method of XmlToHtml class which transforms XML data to HTML format.
     * Creates a new instance of Transformer factory class and takes XSL
     * document as the parameter then transforms the XML document to HTML
     * according to the data written in XSL file.
     *
     * @throws TransformerConfigurationException Indicates a serious
     * configuration error.
     * @throws TransformerException specifies an exceptional condition that
     * occurred during the transformation process.
     */
    public static void ConvertToHtml() throws TransformerConfigurationException, TransformerException {
        Source xslt = new StreamSource(new File("solarsystem.xsl"));
        Source xml = new StreamSource(new File("solarsystem.xml"));
        Result out = new StreamResult(new File("solarsystem.html"));

        TransformerFactory factory = TransformerFactory.newInstance();
        factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_STYLESHEET, "");

        Transformer transformer = factory.newTransformer(xslt);
        transformer.transform(xml, out);
    }
}
