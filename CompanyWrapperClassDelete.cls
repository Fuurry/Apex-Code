public class CompanyWrapperClassDelete {
    
    private String companyName;
    private String ceo;
    private String website;

    public CompanyWrapperClassDelete(string companyName , String ceo , String website){
        this.companyName = companyName;
        this.ceo = ceo;
        this.website = website;
    }
// making a list of inner class 
    private list<Client> listOfCustomers = new list<Client>();

    // adding data to the inner class
    public void addClient(String clientName , String email , Long phone){
        Client c = new Client(clientName,email,phone);
        listOfCustomers.add(c);

    }
// fetching data from the inner class
    public void fetchClientData(){
        for(Client c : listOfCustomers){
            System.debug('Client Name '+c.clientName+ ' Client Email ' + c.email+ ' Client Phone' +c.phone);
        }
    }

    // creating a inner class or wrapper Class 
    private class Client{

        public String clientName;
        public String email;
        public Long phone;

        Client(String clientName , String email , Long phone){
            this.clientName = clientName;
            this.email =email;
            this.phone = phone;
        }
    }





}