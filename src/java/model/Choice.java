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
public class Choice {
    private int choiceId;
    private String description;
    private int isCorrectAnswer;

    public int getChoiceId() {
        return choiceId;
    }

    public void setChoiceId(int choiceId) {
        this.choiceId = choiceId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getIsCorrectAnswer() {
        return isCorrectAnswer;
    }

    public void setIsCorrectAnswer(int isCorrectAnswer) {
        this.isCorrectAnswer = isCorrectAnswer;
    }
    
   
   
    @Override
    public String toString() {
        return "Choice{" +
                "\nchoiceId=" + choiceId +
                ", description='" + description + '\'' +
                ", isAnswer=" + isCorrectAnswer +
                '}';
    }
}
