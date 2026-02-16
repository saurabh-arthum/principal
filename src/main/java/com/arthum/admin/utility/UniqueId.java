package com.arthum.admin.utility;

import com.fasterxml.uuid.Generators;

public class UniqueId {

    public static String getId()
    {
        String uuid = Generators.timeBasedEpochGenerator().generate().toString();
       return uuid;
    }
}
