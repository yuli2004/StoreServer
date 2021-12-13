﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using StoreServerBL.Models;
using System.IO;

namespace StoreServer.Controllers
{
    [Route("StoreAPI")]
    [ApiController]
    public class StoreController : ControllerBase
    {
        #region Add connection to the db context using dependency injection
        StoreDBContext context;
        public StoreController(StoreDBContext context)
        {
            this.context = context;
        }
        #endregion

        #region LogIn
        [Route("LogIn")]
        [HttpGet]
        public  User LogIn([FromQuery]string username, [FromQuery] string pass)
        {
            User user = this.context.LogIn(username, pass);
            if(user==null)
            {
                Response.StatusCode = (int)System.Net.HttpStatusCode.Forbidden;
                return null;
            }    
            else
            {
                //save the user in session
                HttpContext.Session.SetObject("userLogin", user);

                Response.StatusCode = (int)System.Net.HttpStatusCode.OK;

                //Important! Due to the Lazy Loading, the user will be returned with all of its contects!!
                return user;
            }
        }
        #endregion

        #region buyer register
        [Route("RegisterBuyer")]
        [HttpPost]
        public Buyer RegisterBuyer([FromBody] Buyer userBuyer)
        {
            //Check user name and password
            if (userBuyer != null)
            {
                this.context.RegisterBuyer(userBuyer);
                HttpContext.Session.SetObject("theUser", userBuyer);
                Response.StatusCode = (int)System.Net.HttpStatusCode.OK;
                //Important! Due to the Lazy Loading, the user will be returned with all of its contects!!
                return userBuyer;
            }
            else
            {
                Response.StatusCode = (int)System.Net.HttpStatusCode.Forbidden;
                return null;
            }
        }
        #endregion

        #region seller register
        [Route("RegisterSeller")]
        [HttpPost]
        public Seller RegisterSeller([FromBody] Seller userSeller)
        {
            //Check user name and password
            if (userSeller != null)
            {
                this.context.RegisterSeller(userSeller);
                HttpContext.Session.SetObject("theUser", userSeller);
                Response.StatusCode = (int)System.Net.HttpStatusCode.OK;
                //Important! Due to the Lazy Loading, the user will be returned with all of its contects!!
                return userSeller;
            }
            else
            {
                Response.StatusCode = (int)System.Net.HttpStatusCode.Forbidden;
                return null;
            }
        }
        #endregion

        #region UserExistsByEmail
        [Route("UserExistsByEmail")]
        [HttpGet]
        public bool UserExistsByEmail([FromQuery] string email)
        {
            bool exist = this.context.UserExistsByEmail(email);

            if (exist)
            {
                Response.StatusCode = (int)System.Net.HttpStatusCode.OK;

                //Important! Due to the Lazy Loading, the user will be returned with all of its contects!!
                return true;
            }
            else
            {
                Response.StatusCode = (int)System.Net.HttpStatusCode.Forbidden;
                return false;
            }
        }
        #endregion

        #region UserExistsByUsername
        [Route("UserExistsByUsername")]
        [HttpGet]
        public bool UserExistsByUsername([FromQuery] string username)
        {
            bool exist = this.context.UserExistsByUsername(username);

            if (exist)
            {
                Response.StatusCode = (int)System.Net.HttpStatusCode.OK;

                //Important! Due to the Lazy Loading, the user will be returned with all of its contects!!
                return true;
            }
            else
            {
                Response.StatusCode = (int)System.Net.HttpStatusCode.Forbidden;
                return false;
            }
        }
        #endregion

        #region upload image
        [Route("UploadImage")]
        [HttpPost]
        public async Task<IActionResult> UploadImage(IFormFile file)
        {
            User user = HttpContext.Session.GetObject<User>("theUser");
            
                if (file == null)
                {
                    return BadRequest();
                }

                try
                {
                    var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/images", file.FileName);
                    using (var stream = new FileStream(path, FileMode.Create))
                    {
                        await file.CopyToAsync(stream);
                    }


                    return Ok(new { length = file.Length, name = file.FileName });
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                    return BadRequest();
                }
            
        }
        #endregion
    }


}
