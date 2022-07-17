/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Dell
 */
public class Transaction {

    private int id;
    private Account mentee;
    private int amount;
    private int last_update;

    public Transaction() {
    }

    public Transaction(int id, Account mentee, int amount, int last_update) {
        this.id = id;
        this.mentee = mentee;
        this.amount = amount;
        this.last_update = last_update;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getMentee() {
        return mentee;
    }

    public void setMentee(Account mentee) {
        this.mentee = mentee;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getLast_update() {
        return last_update;
    }

    public void setLast_update(int last_update) {
        this.last_update = last_update;
    }

}
