package com.company.project.common.util.Exception;

/**
 * Created by Viki.Feng on 10/03/2016.
 */
public class ServiceException extends RuntimeException {
    private static String typeFlag = "SERVICE EXCEPTION: ";

    public ServiceException() {
        super();
    }

    public ServiceException(String msg) {
        super(typeFlag + msg);
    }

    public ServiceException(String msg, Throwable cause) {
        super(typeFlag + msg, cause);
    }

    public ServiceException(Throwable cause) {
        super(cause);
    }
}
