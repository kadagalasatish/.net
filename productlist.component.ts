import { Component, OnInit } from '@angular/core';
import { productModel } from 'src/Models/productModel';
import { MyproductService } from '../myproduct.service';

@Component({
  selector: 'app-productlist',
  templateUrl: './productlist.component.html',
  styleUrls: ['./productlist.component.css']
})
export class ProductlistComponent implements OnInit {
  productdata: Array<productModel>=[];
  constructor(private s:MyproductService) { }

  ngOnInit(): void {
    this.s.getEvents().subscribe(data => {
      this.productdata = data;
    });
  }
}
