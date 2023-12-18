

void main() {

  //Colection'lar (list,map,set,ıtarable ve looplar)
  /*
    List => elemanları listelemeye yarar [1,2,3] gibi kullanılır
    Set  => list yapısına benzer ama bir elemanı biden fazla kez bulamıyoruz {1,2,3} kullanımı
    Map =>key,value d.ift elemanlarını barındırı {1:10,2:20,3:30}
  
    Itrable
    List impelemnts Itareble{} (list ıtrable)
    Set impelements Itarable {} (set ıtarable)

    Map{ (map bir ıtarable değil)
      ıtarable entries;(çifteleri kastediyor)
      ıtarable keys;
      ıtarable values;
    }

    Itarable=üzerinde adım adım ilerlenerek eleman çekilebilen her şey
    ıtarable.first = ilk eleman
    ıtarable.last =son eleman 
    ıtarable.length= kaç atne eleman
    ıtarable.contains(e) =ıtarable içinde e eleman var mı yok mu
    ıtarable.forEach((e) => print(e))=her elemanı print ediyor
    List I =Itarable.toList()=listeye dönüştürü
   */

  final List<int> l=[1,2,3];
  final Set<int> s={1,2,3};
  final Map<int, int> m={1:10,2:20,3:30};

  Iterable<int> li=l;
  Iterable<int> si=s;
  //Map bir ıtrable dğeil ama entries,key,value bir ıtareble
  final Iterable<MapEntry<int, int>> mei=m.entries;
  final Iterable<int> mki=m.keys;
  final Iterable<int> mvi=m.values;


 //entries loop
 for(final e in mei){
  print(e);
 }
 //key loop
 for(final e in mki){
  print(e);
 }
 //value loop
 for(final e in mvi){
  print(e);
 }
 
 for(final e in si){
  print(e);
 }

 for(final e in li){
    print(e);
  }

  print(li.first);
  print(li.last);
  print(li.length);
  print(li.contains(4));
  
  li.forEach((element) { 
    print(element);
  });

  List<int> list=si.toList();
  //Itrable üzerinde gezinilebilen şey ,Iterator üzerinde gezen şey(index gibi)

  /* 
  List ile LOOP 
   1.) for(final e in list){
          print(e);
    }
   2.)for (var i = 0; i < list.lengt; i++) {
      print(list[i]);
     }

   Set ile LOOP
    sette sıra kavramı olmadığı için 
    1.)for(final e in list){
      print(e);
    }



    Map ile Loop
    1.)for(final e i map.entires){
      print(e.key);
      print(e.value);
    }
    2.)for(final k in map.keys){
      print(map[k]);
    }
    3.) for(final vin map.values){
      print(v);
    }


  */

  for(final e in l){
    print(e);
  }
  for (var i = 0; i < l.length; i++) {
     print('$i: ${l[i]}');
  }

  for(final e in s){
    print(e);
  }

  for(final a in m.entries){
    print('${a.key}: ${a.value}');
  }
  for(final d in m.keys){
    print(d);
  }
  for(final f in m.values){
    print(f);
  }

  //Collection Oparetörler 
  /* 
  Spread Operatörü(...)
  Bir list'i/map'i/set'i diğerinin içine açar
  *LİST ÖRNEĞİ
  final li=[1,2,3];
  print([0,...li,3,4,5]);//[0,1,2,3,4,5]
  *SET ÖRNEĞİ
  final si={1,2,3};
  printh({0,..si,3,4,5});//{0,1,2,3,4,5}
  *MAP ÖRNEĞİ
  final mi={1:10,2:20};
  print({1:100,2:200,3:300,..mi})//1:,2:20,3:300(son verdiğim key baskın çıkar)
  */


 //List
  print([1,23,45,...l]);//spread öperatörü açarak ekliyor
  print([1,43,35,25,l,7542]);//buarda listeyi elemanmış gibi ekledi
  
 //Set 
 print({13,47,89,...s});//spread öperatörü açarak ekliyor
 print({23,59,96,s});//buarda set elemanmış gibi ekledi
  
 //Map
 print({1:100,2:200,3:300,...m});//spred açarak ekeldi fakat son eklelen key benzer keyi ezer
 print({1:100,2:200,3:300,4:m});//buarda map value gibi eklendi


 /*
 Collection if ve for
 Bir list/set/map yaratırken elemanları 
 ekleme/eklememe kararı
 tekrar terkar ekleme
 yapmamızı Sağlar.
 if/for'dan sonra {} kullanmıyoruz
 */

//LİST ÖRNEĞİ
print([
  1,
  2,
  3,
  if(1==1)
  66,
  if(1!=1)
  77
  else
  88,
  for(int i=0;i<3;i++)
  i,
  4,
  5,
]);
//SET ÖRNEĞİ(DİKKAT AYNI ELEMAN EKLENEMEZ!)
print({
  1,
  2,
  if(1==1)
  66,
  if(1!=1)
  77
  else
  88,
  for(int i=0;i<3;i++)
  i,
  3,
  4,
  5
  }
);
//MAP ÖRNEĞİ(DİKKAT burda ezme kuralı geçerli hala!)
print({
  1:2,
  3:4,
  if(1==1)
  64:65,
  if(1!=1)
  77:78
  else
  88:90,
  5:6,
  for(int i=0;i<3;i++)
  i:i*10,
});

/*
Spread ve if/for kombinasyonu yapılabilir !!
[
  0,
  if(ilkucekle)
  ...[1,2,3],
  for(var i=4;i<6;i++)
  ...[i,i*10],
  6,
] 
*/

  print([
  1,
  2,
  3,
  if(1==1)
  66,
  if(1!=1)
  ...[77,76,75]
  else
  88,
  for(int i=0;i<3;i++)
  i,
  4,
  5,
  for(int i=0;i<3;i++)
  if(i==1)
  1111111,
  for(int i=0;i<3;i++)
  if(i.isEven)
  ...([1111111,2222222]+[33333]),
  
]);

/* 
Tek eleman Bulma
//tek bir eleman (örn.2)
itarable.first
itarable.last
itarale.firstWhere((e)=>e<3)
*/
final iterable =[1,2,3,4,5,6,7,8,9,0];
print(iterable);
print(iterable.first);
print(iterable.last);
print(iterable.firstWhere((element) => element%4==0));



/*
Tüm elemanlari İlgilendiren Soru
//true veya false
itarable.any((e)=>e<3)//elemanlardna herhang biri bunu sağlıyormu
itable.every((e)=>e<3)
//tüm elemanların toplamı
iterable.fold(0,(a,b)=>a+b)//bu örnek tüm elemnaların toplmaı
*/
if(iterable.any((element) => element%11==0)){
  print('11\'e bölünen var');
}
if (iterable.every((element) => element>=0)) {//tüm elemanlar sağlıyorsa true dönüyor
  print('hepsi sağlıyor');
}
print(iterable.fold<int>(0, (previousValue, element) => previousValue+element));


/*
//aynı türden , daha az elemanlı yeni bir itarable 
iterableçwhere((e)=>e<3)//true veya false döenen fonksiyon veriyoruz ,fonksiyonu tüm elemanlara uyguluyor  true döndüğü elemanlari yeni bir iterable olarak  geri dönüyör
*/
print(iterable.where((element) => element>4));
final Iterable<int> ccc=iterable.where((element) => element>4);


/*
Her Elamanı Dönüştürme 
//yeni bir türden , aynı boyda bir iterable
iterable.map((e)=>'$e elemanı') 
*/
print(iterable.map((e) => '$e sayiyisi'));//int alıp stringe çevirdi




final listeler=iterable.map((e) => '$e sayiyisi').toList();
print(listeler[5]);



}

