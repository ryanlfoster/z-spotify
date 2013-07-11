package mini.taglib.osgi;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.squeakysand.osgi.framework.BasicBundleActivator;

/**
 * Bundle activator for mini - mini.example-taglib.
 */
public class Activator extends BasicBundleActivator {

    private static final Logger LOG = LoggerFactory.getLogger(Activator.class);

    public Activator() {
		super(LOG);
	}

}
