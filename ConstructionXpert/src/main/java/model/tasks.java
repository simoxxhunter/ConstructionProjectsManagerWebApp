package model;

public class tasks {
    private int task_id;
    private String description;
    private String start_date;
    private String end_date;
    private String status;
    private int resource_id;
    private int project_id;

    public tasks(int task_id, String description, String start_date, String end_date, String status, int resource_id, int project_id) {
        this.task_id = task_id;
        this.description = description;
        this.start_date = start_date;
        this.end_date = end_date;
        this.status = status;
        this.resource_id = resource_id;
        this.project_id = project_id;
    }

    public tasks(String description, String start_date, String end_date, String status, int resource_id, int project_id) {
        this.description = description;
        this.start_date = start_date;
        this.end_date = end_date;
        this.status = status;
        this.resource_id = resource_id;
        this.project_id = project_id;
    }

    public int getTask_id() {
        return task_id;
    }

    public void setTask_id(int task_id) {
        this.task_id = task_id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getResource_id() {
        return resource_id;
    }

    public void setResource_id(int resource_id) {
        this.resource_id = resource_id;
    }

    public int getProject_id() {
        return project_id;
    }

    public void setProject_id(int project_id) {
        this.project_id = project_id;
    }

    @Override
    public String toString() {
        return "tasks{" +
                "task_id=" + task_id +
                ", description='" + description + '\'' +
                ", start_date='" + start_date + '\'' +
                ", end_date='" + end_date + '\'' +
                ", status='" + status + '\'' +
                ", resource_id=" + resource_id +
                ", project_id=" + project_id +
                '}';
    }
}
