// namespace ust.demo;
 
// context master {
   
//     entity student {
//         key id: String(32);
//         nameFirst: String(80);
//         nameLast: String(80);
//         age: Integer;
//          //foreign key @runtime the column name will be class_id
//         class: Association to semester;
//     }
 
//      entity semester {
//         key id : String(32);
//         name: String(30);
//         specialization: String(80);
//         hod: String(44);
//     }

//       entity books {
//         key code : String(32);
//         name: String(80);
//         author: String(44);
//     }
// }
 
 /////////////////reuse///////////////////////
//  using { ust.reuse as reuse } from './reuse';
 
// namespace ust.demo;
 
// context master {
   
//     //consume address aspect to bring set of fields which are reusable
//     entity student: reuse.address {
//         key id: reuse.Guid;
//         nameFirst: String(80);
//         nameLast: String(80);
//         age: Integer;
//         //foreign key @runtime the column name will be class_id
//         class: Association to semester;
//     }
 
//     entity semester {
//         key id : reuse.Guid;
//         name: String(30);
//         specialization: String(80);
//         hod: String(44);
//     }
 
//     entity books {
//         key code : reuse.Guid;
//         name: String(80);
//         author: String(44);
//     }
 
// }
 
 //////////////////////////?//////////////////////
//  using { ust.reuse as reuse } from './reuse';
// using { cuid, managed, temporal } from '@sap/cds/common';
 
 
// namespace ust.demo;
 
// context master {
   
//     //consume address aspect to bring set of fields which are reusable
//     entity student: reuse.address {
//         key id: reuse.Guid;
//         nameFirst: String(80);
//         nameLast: String(80);
//         age: Integer;
//         //foreign key @runtime the column name will be class_id
//         class: Association to one semester;
//     }
 
//     entity semester {
//         key id : reuse.Guid;
//         name: String(30);
//         specialization: String(80);
//         hod: String(44);
//     }
 
//     entity books {
//         key code : reuse.Guid;
//         name: String(80);
//         author: String(44);
//     }
 
// }
// context transaction {
   
//     entity subs : cuid, managed, temporal{
//         student: Association to one master.student;
//         book: Association to one master.books;
//     }
 
// }
 
 
 /////////////////language//////////////
//  using { ust.reuse as reuse } from './reuse';
// using { cuid, managed, temporal } from '@sap/cds/common';
 
 
// namespace ust.demo;
 
// context master {
   
//     //consume address aspect to bring set of fields which are reusable
//     entity student: reuse.address {
//         key id: reuse.Guid;
//         nameFirst: String(80);
//         nameLast: String(80);
//         age: Integer;
//         //foreign key @runtime the column name will be class_id
//         class: Association to one semester;
//     }
 
//     entity semester {
//         key id : reuse.Guid;
//         name: String(30);
//         specialization: String(80);
//         hod: String(44);
//     }
 
//     entity books {
//         key code : reuse.Guid;
//         name: localized String(80);
//         author: String(44);
//     }

//     // entity teacher{
//     //     key id : reuse.Guid;
//     //     name:String(80);

//     // }
 
// }
// context transaction {
   
//     entity subs : cuid, managed, temporal{
//         student: Association to one master.student;
//         book: Association to one master.books;
//     }
 
// }
namespace ust.demo;

context employee{
    
    entity teacher{
        key id:Integer;
        name :String(89);
    }
}