<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Test - BITS Diagnostics</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Select Medical Test</h2>
        <form action="TestBookingServlet" method="post">
            <div class="mb-3">
                <label for="test" class="form-label">Select Test</label>
                <select id="test" name="test" class="form-select">
                    <option value="CBC (Complete Blood Count)">CBC (Complete Blood Count)</option>
                    <option value="Thyroid Profile Total (T3, T4, & TSH)">Thyroid Profile Total (T3, T4, & TSH)</option>
                    <option value="LFT (Liver Function Test)">LFT (Liver Function Test)</option>
                    <option value="Diabetes Screening (HbA1C & Fasting Sugar)">Diabetes Screening (HbA1C & Fasting Sugar)</option>
                </select>
            </div>
            <input type="hidden" name="appointmentDate" value="${sessionScope.appointmentDate}">
            <button type="submit" class="btn btn-primary w-100">Book Test</button>
        </form>
    </div>
</body>
</html>
