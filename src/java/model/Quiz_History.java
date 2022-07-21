/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class Quiz_History {
    int id;
    double mark;
    int status;
    int attemp;
    int lesson_id;

    public int getLesson_id() {
        return lesson_id;
    }

    public void setLesson_id(int lesson_id) {
        this.lesson_id = lesson_id;
    }
    

    public int getAttemp() {
        return attemp;
    }

    public void setAttemp(int attemp) {
        this.attemp = attemp;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getMark() {
        return mark;
    }

    public void setMark(double mark) {
        this.mark = mark;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    

    public Quiz_History() {
    }

    public Quiz_History(int id, double mark, int status) {
        this.id = id;
        this.mark = mark;
        this.status = status;
    }

    public Quiz_History(int id, double mark, int status, int attemp, int lesson_id) {
        this.id = id;
        this.mark = mark;
        this.status = status;
        this.attemp = attemp;
        this.lesson_id = lesson_id;
    }

    @Override
    public String toString() {
        return id+" " +mark +""+ status ;
    }
    
    
}
