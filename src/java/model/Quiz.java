package model;

import java.util.List;

public class Quiz {
    private int quizId;
    private String description;
    private List<Choice> choices;
   

   

    public int getIsSelected() {
        return isSelected;
    }

    public void setIsSelected(int isSelected) {
        this.isSelected = isSelected;
    }

    private int isSelected;

    public int getQuizId() {
        return quizId;
    }

    public void setQuizId(int quizId) {
        this.quizId = quizId;
    }

 

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Choice> getChoices() {
        return choices;
    }

    public void setChoices(List<Choice> choices) {
        this.choices = choices;
    }

    @Override
    public String toString() {
        return "Question{" +
                "questionId=" + quizId +
                ", description='" + description + '\'' +
                ", choices=" + choices +
                ", isSelected=" + isSelected +
                '}';
    }

}
