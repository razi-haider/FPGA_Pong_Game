‘ t i m e s c a l e 1 ns /1 ps
module c l k d i v ( cl k , c l k d ) ;
parameter di v v al u e =1;
i n p u t cl k ;
output c l k d ;
r e g c l k d ;
r e g count ;
i n i t i a l
b e gi n
c l k d =0;
count =0;
end
always @( p o sed ge cl k )
b e gi n
i f ( count == di v v al u e )
count <=0;
e l s e
count<=count +1;
end
always @( p o sed ge cl k )
b e gi n
i f ( count == di v v al u e )
c l k d <= ˜ c l k d ;
end
endmodule
