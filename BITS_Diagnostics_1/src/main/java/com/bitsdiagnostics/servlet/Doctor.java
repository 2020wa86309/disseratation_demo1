package com.bitsdiagnostics.servlet;

public class Doctor {
    private int id;
    private String name;
    private String specialization;
    private String degree;
    private int yearsOfExperience;
    private String email;
    private String hours;
    private String availability; // Fixed typo
    private double fee;

    // No-argument constructor
    public Doctor() {
        // Initializing default values if necessary
    }

    // Parameterized constructor
    public Doctor(int id, String name, String specialization, String degree,
                  int yearsOfExperience, String email, String hours,
                  String availability, double fee) {
        this.id = id;
        this.name = name;
        this.specialization = specialization;
        this.degree = degree;
        this.yearsOfExperience = yearsOfExperience;
        this.email = email;
        this.hours = hours;
        this.availability = availability; // Fixed typo
        this.fee = fee;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public int getYearsOfExperience() {
        return yearsOfExperience;
    }

    public void setYearsOfExperience(int yearsOfExperience) {
        this.yearsOfExperience = yearsOfExperience;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClinicHours() {
        return hours;
    }

    public void setClinicHours(String hours) {
        this.hours = hours;
    }
    
    public String getAvailability() { // Fixed method name
        return availability;
    }

    public void setAvailability(String availability) { // Fixed method name
        this.availability = availability;
    }
    
    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
        this.fee = fee;
    }
    
    @Override
    public String toString() {
        return "Doctor [ID=" + id + ", Name=" + name + ", Specialization=" + specialization +
               ", Degree=" + degree + ", Years of Experience=" + yearsOfExperience +
               ", Email=" + email + ", Hours=" + hours + ", Availability=" + availability + ", Fee=" + fee + "]";
    }
}
