import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AdminloginComponent } from './adminlogin/adminlogin.component';
import { HomeComponent } from './home/home.component';
import { WrongUserComponent } from './wrong-user/wrong-user.component';

const routes: Routes = [{path:'AdminLogin',component:AdminloginComponent},
{path:'home',component:HomeComponent},
{path:'wrong-user',component:WrongUserComponent}];

export default routes;

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
