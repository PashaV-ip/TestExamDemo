//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OOO_Goods_for_Animals.DbEntity
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public int ID { get; set; }
        public string UserLogin { get; set; }
        public string UserPassword { get; set; }
        public Nullable<int> UserInfoID { get; set; }
    
        public virtual UserInfo UserInfo { get; set; }
    }
}