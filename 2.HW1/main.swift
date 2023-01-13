//
//  main.swift
//  2.HW1
//
//  Created by Indira on 13/1/23.
//

import Foundation

print("Hello, World")

class Client{
    var name: String
    var surname: String
    var amountofCredit: Int
    var loanPeriod: Int
    var repayment: Int
    init(name: String, surname: String, amountofCredit: Int, loanPeriod: Int, repayment: Int) {
        self.name = name
        self.surname = surname
        self.amountofCredit = amountofCredit
        self.loanPeriod = loanPeriod
        self.repayment = repayment
    }
    func showInfo(){
        print("\(name), \(surname), \(amountofCredit), \(loanPeriod), \(repayment)")
    }
}
class Bank{
    var client:[Client] = [Client] ()
    func countAmountofCredit(amountofCredit:Int, loanPeriod:Int, repayment:Int) {
        for i in client {
            if loanPeriod == 1 {
                i.repayment += repayment * Int(0.3)
            }
            if loanPeriod == 2 {
                i.repayment += repayment * Int(0.15)
            }
            if loanPeriod == 3 {
                i.repayment += repayment * Int(0.10)
            }
        }
    }
    func client(person:Client) {
        for i in client {
            print("\(i.name), \(i.surname), \(i.amountofCredit), \(i.loanPeriod), \(i.repayment)")
        }
    }
}
var bank = Bank()
var person = Client(name: "Sarah", surname: "Prax", amountofCredit: 0, loanPeriod: 0, repayment: 0)
bank.client(person: Client (name: "Sarah", surname: "Prax", amountofCredit: 0, loanPeriod: 0, repayment: 0))
bank.countAmountofCredit(amountofCredit: 10000, loanPeriod: 5, repayment: 10000)
bank.client.append(person)
