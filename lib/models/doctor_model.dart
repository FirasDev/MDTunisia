class DoctorModel{
  final String name;
  final String rating;
  final String imageUrl;
  final String fee;
  final String speciality;
  final String opendate;
  final String closedate;
  final String review1;
  final String review2;
  final String review3;
  final String address;
  final String tel;


DoctorModel ({
  this.name, this.rating, this.imageUrl, this.fee, this.speciality,this.opendate,
  this.closedate,this.review1,this.review2,this.review3,this.address,this.tel
            });

}
List<DoctorModel> dummyData = [
  new DoctorModel(
    name: "Mikhail Varshavski",
    rating: "4.5",
    imageUrl: "https://i.redd.it/6tbbl1855kqz.jpg",
    fee: "50",
    speciality: "Cardiologue",
    opendate: "10:00",
    closedate: "18:00",
    review1: "Ce médecin était vraiment gentil et compréhensif",
    review2: "docteur Mikhail était super !!!",
    review3: "meilleur spécialiste de la région à mon avis",
    address: "bardo,Tunis",
    tel: "+21658459082"
  ),
    new DoctorModel(
    name: "Dwight Schrute",
    rating: "4",
    imageUrl: "https://i.gyazo.com/2fdb6f9e275f67bb111de00443d52b92.png",
    fee: "40",
    speciality: "Psychiatre",
    opendate: "09:00",
    closedate: "17:00",
    review1: "",
    review2: "",
    review3: "",
    address: "",
    tel: ""
  ),
    new DoctorModel(
    name: "Pam Beseley",
    rating: "4.5",
    imageUrl: "https://i.gyazo.com/85328a75c8b3f0ecc4178c46de97bc9c.png",
    fee: "45",
    speciality: "Urologue",
    opendate: "09:00",
    closedate: "17:00",
    review1: "",
    review2: "",
    review3: "",
    address: "",
    tel: ""
  ),
    new DoctorModel(
    name: "Kevin Malone",
    rating: "5",
    imageUrl: "https://i.gyazo.com/c62b88e326c8e57cf67b7d9403ab8270.jpg",
    fee: "30",
    speciality: "Gynécologue",
    opendate: "08:00",
    closedate: "16:00",
    review1: "",
    review2: "",
    review3: "",
    address: "",
    tel: ""
  ),
];

