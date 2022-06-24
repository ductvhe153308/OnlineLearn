package model;


import java.util.List;
import model.Question;

public class QuizType {
    private int quizTypeId;
    private String name;
    private String description;
    private String ImageUrl;
    private List<Question> questions;
    private String questionsJson;
   



    public int getQuizTypeId() {
        return quizTypeId;
    }

    public void setQuizTypeId(int quizTypeId) {
        this.quizTypeId = quizTypeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl() {
        return ImageUrl;
    }

    public void setImageUrl(String imageUrl) {
        ImageUrl = imageUrl;
    }

    public List<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }



    @Override
    public String toString() {
        return "QuizType{" +
                "quizTypeId=" + quizTypeId +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", ImageUrl='" + ImageUrl + '\'' +
                ", questions=" + questions +
                '}';
    }
}
