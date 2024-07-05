package ph.pup.itech.dbtkmgr.controllers;

import java.io.IOException;

public class Test {
    public void shutdown() throws IOException, InterruptedException{
        Thread.sleep(5000);

        /*
        Runtime runtime = Runtime.getRuntime();
        Process proc = runtime.exec("shutdown -s -t 0 -f");
        System.exit(0);
        */
    }
}
