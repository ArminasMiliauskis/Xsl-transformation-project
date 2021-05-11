package lt.eif.viko.amiliauskis.solarsystemtopdf;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;
import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.xmlgraphics.util.MimeConstants;

/**
 * Main class of the program. Responsible for performing transformation of XML
 * data to PDF format. Has a main method and a void class used for
 * transformation.
 *
 * @author Arminas Miliauskis
 * @version 1.0-SNAPSHOT
 * @since 1.0-SNAPSHOT
 */
public class SolarSystemToPdf {

    /**
     * Main function which performs the convertToPDF method.
     *
     * @param args accepts a single argument of string type
     */
    public static void main(String[] args) {
        try {
            convertToPDF();
        } catch (FOPException | IOException | TransformerException e) {
            e.printStackTrace();
        }
    }

    /**
     * Transforms data from XML file to PDF format. Creates an instance of fop
     * factory and constructs it with desired output format. Then sets up XSL
     * transformer and starts the transformation and FOP processing after which
     * PDF is created.
     *
     * @throws FileNotFoundException Signals that an attempt to open the file
     * denoted by a specified pathname has failed.
     * @throws FOPException Exception thrown when FOP has a problem.
     * @throws TransformerConfigurationException Indicates a serious
     * configuration error.
     * @throws TransformerException specifies an exceptional condition that
     * occurred during the transformation process.
     * @throws IOException Signals that an I/O exception of some sort has
     * occurred.
     */
    public static void convertToPDF() throws FileNotFoundException, FOPException, TransformerConfigurationException, TransformerException, IOException {
        // the XSL FO file
        File xsltFile = new File("solarsystem-topdf.xsl");
        //the XML file which provides the input
        StreamSource xmlSource = new StreamSource(new File("solarsystem.xml"));
        // create an instance of fop factory
        FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
        // a user agent is needed for tranformation
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
        // Setup output
        OutputStream out;

        out = new java.io.FileOutputStream("output.pdf");

        try {
            //Construct fop with desired output format
            Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);

            //Setup XSLT
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));

            //Resulting SAX events ( the generated FO) must be piped throught to
            // FOP
            Result res = new SAXResult(fop.getDefaultHandler());
            //Start XSLT tranformation and FOP processing
            // That's where the XML is first transformer to XSL-FO and then
            // PDF is created
            transformer.transform(xmlSource, res);

        } finally {
            out.close();
        }
    }
}
