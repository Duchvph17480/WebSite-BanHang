package com.ph17480.exception;

public class StorageException extends RuntimeException {
	public StorageException(String message) {
		super(message);
	}

	public StorageException(String message, Exception e) {
		super(message,e);
	}
}
