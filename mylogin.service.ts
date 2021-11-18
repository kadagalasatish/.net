import { Injectable } from '@angular/core';
import { AdminLogin } from 'src/Models/AdminLogin';
import {HttpClient} from '@angular/common/http';
import { Router } from '@angular/router';


@Injectable({
  providedIn: 'root'
})
export class MyloginService {

  public api="https://localhost:44312/api/Admin/adminlogin/";
  mystatus:number=0;
  public getapi='https://localhost:44312/api/';

  constructor(private http:HttpClient,private r:Router) { }
  postlogin(logindata:AdminLogin){
    let endpoints="Admin/adminlogin";
    let loginStatus:boolean=false;
    this.http.post(this.getapi+endpoints,logindata).subscribe(
      (i:any) => { console.log(i.status);
        if(i.status==200)
        {this.r.navigate(['/home']);}
        else{
          this.r.navigate(['/wrong-user']);
        }
      }
      
      );
     
  }
}
