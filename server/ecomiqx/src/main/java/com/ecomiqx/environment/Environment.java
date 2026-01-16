package com.ecomiqx.environment;

import io.github.cdimascio.dotenv.Dotenv;

public class Environment
{

    /**
     * @Author: Brijesh Nishad
     * Loads .env file and injects variables into System properties.
     * Use this before SpringApplication.run() to make Spring Boot read them.
     */

    public static void loadEnv()
    {
        try
        {
            // Load .env from project root
            Dotenv dotenv = Dotenv.configure()
                    .filename(".env")        // .env file name
                    .ignoreIfMissing()       // Don't fail if .env is missing
                    .load();

            // Inject all variables into System properties
            dotenv.entries().forEach(entry -> {
                // Only set if not already set in system env
                if (System.getProperty(entry.getKey()) == null)
                {
                    System.setProperty(entry.getKey(), entry.getValue());
                }
            });

            // Optional: print loaded values for debugging (remove in prod)
            System.out.println("Loaded .env variables:");
            dotenv.entries().forEach(entry ->
                    System.out.println(entry.getKey() + "=" + entry.getValue())
            );

        } catch (Exception e)
        {
            System.err.println("Failed to load .env file: " + e.getMessage());

        }
    }
}
