 

/*
	以下代码为T4自动生成的代码，请不要擅自修改
	生成时间:2013-05-26 00:03:15.1668
	生成机器：WANGJUN
	author：xiaose
*/
using System;
using System.Collections.Generic; 
using System.Text;
using HelloData.FrameWork.Data;

 
 
    /// <summary>
	///	
	/// </summary>
	[Serializable]
    public partial class user_pageinfos: BaseEntity
    {
	  
	    /// <summary>
		///	
		/// </summary>
        [Column(IsKeyProperty = true,AutoIncrement=true)]
		public int id { get; set; }	
		public  user_pageinfos()
        {
            base.SetIni(this,"user_pageinfos","id");
        }	
	    /// <summary>
		///	
		/// </summary>
 		public int? user_id { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public int? page_id { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string bgpic_path { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public int? bgpic_repeat { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public int? bgpic_position { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string info_header { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string info_name { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string info_title { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string info_about { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string info_tag { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string info_aboutpic { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_bg { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_info { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_name { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_tag { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_title { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_about { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_link { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_info_position { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string color_info_ps_value { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string font_name { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public int? font_name_size { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string font_title { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public int? font_title_size { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string font_about { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public int? font_about_size { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string font_tag { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public int? font_tag_size { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link1 { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link1_title { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link1_ico { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link2 { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link2_title { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link2_ico { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link3 { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link3_title { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link3_ico { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link4 { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link4_title { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string social_link4_ico { get; set; }		
				
		public static class Columns
		{
			public const string id="id";					
			public const string user_id="user_id";					
			public const string page_id="page_id";					
			public const string bgpic_path="bgpic_path";					
			public const string bgpic_repeat="bgpic_repeat";					
			public const string bgpic_position="bgpic_position";					
			public const string info_header="info_header";					
			public const string info_name="info_name";					
			public const string info_title="info_title";					
			public const string info_about="info_about";					
			public const string info_tag="info_tag";					
			public const string info_aboutpic="info_aboutpic";					
			public const string color_bg="color_bg";					
			public const string color_info="color_info";					
			public const string color_name="color_name";					
			public const string color_tag="color_tag";					
			public const string color_title="color_title";					
			public const string color_about="color_about";					
			public const string color_link="color_link";					
			public const string color_info_position="color_info_position";					
			public const string color_info_ps_value="color_info_ps_value";					
			public const string font_name="font_name";					
			public const string font_name_size="font_name_size";					
			public const string font_title="font_title";					
			public const string font_title_size="font_title_size";					
			public const string font_about="font_about";					
			public const string font_about_size="font_about_size";					
			public const string font_tag="font_tag";					
			public const string font_tag_size="font_tag_size";					
			public const string social_link1="social_link1";					
			public const string social_link1_title="social_link1_title";					
			public const string social_link1_ico="social_link1_ico";					
			public const string social_link2="social_link2";					
			public const string social_link2_title="social_link2_title";					
			public const string social_link2_ico="social_link2_ico";					
			public const string social_link3="social_link3";					
			public const string social_link3_title="social_link3_title";					
			public const string social_link3_ico="social_link3_ico";					
			public const string social_link4="social_link4";					
			public const string social_link4_title="social_link4_title";					
			public const string social_link4_ico="social_link4_ico";					
		}
				 
	}
				 
    /// <summary>
	///	
	/// </summary>
	[Serializable]
    public partial class user_pages: BaseEntity
    {
	  
	    /// <summary>
		///	
		/// </summary>
        [Column(IsKeyProperty = true,AutoIncrement=true)]
		public int id { get; set; }	
		public  user_pages()
        {
            base.SetIni(this,"user_pages","id");
        }	
	    /// <summary>
		///	
		/// </summary>
 		public int? user_id { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string pagename { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string pagecode { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public DateTime? createtime { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public bool? isopen { get; set; }		
				
		public static class Columns
		{
			public const string id="id";					
			public const string user_id="user_id";					
			public const string pagename="pagename";					
			public const string pagecode="pagecode";					
			public const string createtime="createtime";					
			public const string isopen="isopen";					
		}
				 
	}
				 
    /// <summary>
	///	
	/// </summary>
	[Serializable]
    public partial class user_pics: BaseEntity
    {
	  
	    /// <summary>
		///	
		/// </summary>
        [Column(IsKeyProperty = true,AutoIncrement=true)]
		public int id { get; set; }	
		public  user_pics()
        {
            base.SetIni(this,"user_pics","id");
        }	
	    /// <summary>
		///	
		/// </summary>
 		public int? user_id { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string pic_path { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public DateTime? createtime { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string picname { get; set; }		
				
		public static class Columns
		{
			public const string id="id";					
			public const string user_id="user_id";					
			public const string pic_path="pic_path";					
			public const string createtime="createtime";					
			public const string picname="picname";					
		}
				 
	}
				 
    /// <summary>
	///	
	/// </summary>
	[Serializable]
    public partial class users: BaseEntity
    {
	  
	    /// <summary>
		///	
		/// </summary>
        [Column(IsKeyProperty = true,AutoIncrement=true)]
		public int id { get; set; }	
		public  users()
        {
            base.SetIni(this,"users","id");
        }	
	    /// <summary>
		///	
		/// </summary>
 		public string username { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string password { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public string email { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public bool? isopen { get; set; }		
	    /// <summary>
		///	
		/// </summary>
 		public bool? isactive { get; set; }		
				
		public static class Columns
		{
			public const string id="id";					
			public const string username="username";					
			public const string password="password";					
			public const string email="email";					
			public const string isopen="isopen";					
			public const string isactive="isactive";					
		}
				 
	}
				 

