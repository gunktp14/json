<?php
interface Iregister
{
    public function getRegisterCourse(string $cs_id): array;
    public function registerCourse(array $data_register): bool;

}

class Register implements Iregister
{
    private $ConDB;
    public function __construct()
    {
        $con = new ConDB();
        $con->connect();
        $this->ConDB = $con->conn;
    }
    // public function getRegisterCourse(string $cs_id)
    public function getRegisterCourse(string $cs_id): array
    {
        $sql = "SELECT * FROM sci_cs where cs_id = " . $cs_id;
        $query = $this->ConDB->prepare($sql);
        if ($query->execute()) {
            $result = $query->fetch(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }
    public function registerCourse(array $data_register): bool
    {
        $sql = "INSERT INTO `sci_re` (`re_id`, `re_email`, `re_prefix`, `re_name`, `re_phonenumber`, `re_IDnumber`, `re_educational` , `re_img`)";
        $sql .= " VALUES ('', :re_email, :re_prefix, :re_name, :re_phonenumber , :re_IDnumber , :re_educational , :re_img );";
        $query = $this->ConDB->prepare($sql);
        if ($query->execute($data_register)) {
            return true;
        } else {
            return false;
        }
    }
}
?>