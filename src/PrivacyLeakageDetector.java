import com.ibm.wala.classLoader.CallSiteReference;
import com.ibm.wala.classLoader.ProgramCounter;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.DefUse;
import com.ibm.wala.ssa.IR;
import com.ibm.wala.ssa.SSAInstruction;
import com.ibm.wala.ssa.SymbolTable;

import java.util.ArrayList;
import java.util.Iterator;

/**
 * Created by Jack on 2/23/16.
 */

public class PrivacyLeakageDetector {
    /**
     *
     * @param cg
     * @param vulnerabilities
     * @throws Exception - not sure where the exception comes from
     *
     * This detector works by first specifying the function signature for sending out text messages.
     * Using this signature, we scan the code for match. Once a match is found we do the following:
     *
     * 1) If first parameter (phone number) is a constant, we mark it as vulnerability
     * 2) If 1) is true, a.k.a vulnerability, we dump out
     *      - src, isSourceConstant, isSourceParameter (not 100% sure if it works properly)
     *      - sink (constant or dynamic)
     *      - information about the leak
     *
     */
    public static void analyze(CallGraph cg, Vulnerabilities vulnerabilities) throws Exception {
        System.out.println("--------------------");
        System.out.println("PrivacyLeakageDetector");
        System.out.println("--------------------");

        // instantiate arrayList to initialize PrivacyLeakage List object in vulnerabilities
        vulnerabilities.PrivacyLeakage = new ArrayList<Vulnerabilities.LeakagePath>();
        Vulnerabilities.LeakagePath leakagePath = null;

        // class hierarchy analysis
        IClassHierarchy cha = cg.getClassHierarchy();

        // sendTextMessage signature - may lead false positive
        String sendTextMessageSignature = "android.telephony.SmsManager.sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V";

        // analyze local data and control flow using IR object within CGNode
        Iterator<CGNode> nodeIter = cg.iterator();

        while (nodeIter.hasNext()) {
            CGNode callerNode = nodeIter.next();

            Iterator<CallSiteReference> callSiteIter = callerNode.iterateCallSites();
            while (callSiteIter.hasNext()) {
                CallSiteReference callSite = callSiteIter.next();

                if (callSite.getDeclaredTarget().getSignature().equals(sendTextMessageSignature)) {
                    IR callerIR = callerNode.getIR();
                    SymbolTable callerSymbols = callerIR.getSymbolTable();
                    SSAInstruction invokeInstr = callerIR.getPEI(new ProgramCounter(callSite.getProgramCounter()));

                    if (callerSymbols.isStringConstant(invokeInstr.getUse(1))) {
                        // initialize a new Vulnerabilities.LeakagePath object
                        leakagePath = new Vulnerabilities.LeakagePath();

                        // fill in leakage information
                        leakagePath.information = "SMS sent to: " + callerSymbols.getStringValue(invokeInstr.getUse(1));
                        leakagePath.sink = invokeInstr.toString();
//                        System.out.println("SMS sent to: " + callerSymbols.getStringValue(invokeInstr.getUse(1)));

                        if (callerSymbols.isStringConstant(invokeInstr.getUse(3))) {
                            leakagePath.isSourceConstant = "true";
                            leakagePath.source = callerSymbols.getStringValue(invokeInstr.getUse(3));
//                            System.out.println("    text: " + callerSymbols.getStringValue(invokeInstr.getUse(3)));
                        } else {
                            // Get DefUse object
                            DefUse callerDefUse = callerNode.getDU();
                            SSAInstruction textDefInstr = callerDefUse.getDef(invokeInstr.getUse(3));

                            if (textDefInstr != null) {
                                leakagePath.source = textDefInstr.toString();
                                leakagePath.isSourceConstant = "false";
                                //TODO:  not quite sure how to follow def-use chain, this may not be the correct implementation
                                leakagePath.isSourceParameter = callerSymbols.isParameter(invokeInstr.getUse(3)) ? "true" : "false";
//                                System.out.println("    text: " + textDefInstr.toString());
                            }
                        }
                        vulnerabilities.PrivacyLeakage.add(leakagePath);
                    }
                }
            }
        }
    }
}
