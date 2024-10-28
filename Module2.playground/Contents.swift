import UIKit

func Payment(loanAmount: Int, numberOfPayments: Int, interestRatePerPeriod: Float) -> Float {
    let P = Float(loanAmount)
    let n = Float(numberOfPayments)
    let r = interestRatePerPeriod / 100

    // Amortization formula: PMT = P * r / (1 - (1 + r)^-n)
    let payment = P * r / (1 - pow(1 + r, -n))
    
    return round(payment * 100) / 100
}

let monthlyPayment = Payment(loanAmount: 20000, numberOfPayments: 2, interestRatePerPeriod: 0.3667)
print("2-month loan scenario: $\(monthlyPayment)")

let annualPayment = Payment(loanAmount: 150000, numberOfPayments: 30, interestRatePerPeriod: 5.0)
print("30-year loan scenario: $\(annualPayment)")
