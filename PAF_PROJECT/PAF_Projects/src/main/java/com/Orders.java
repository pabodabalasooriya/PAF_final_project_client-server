package com;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.DELETE;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/Orders")
public class Orders
	{
		@GET
		@Path("/")
		@Produces(MediaType.TEXT_PLAIN)
		
		public String orders()
			 {
			 	return "";
			 }
		
		/*@POST
		@Path("/")
		@Produces(MediaType.TEXT_PLAIN)
		
		public String orders()
			 {
			 	return "";
			 }
		
		@DELETE
		@Path("/")
		@Produces(MediaType.TEXT_PLAIN)
		
		public String orders()
			 {
			 	return "";
			 }
		
		@PUT
		@Path("/")
		@Produces(MediaType.TEXT_PLAIN)
		
		public String orders()
			 {
			 	return "";
			 }*/
	} 


		
