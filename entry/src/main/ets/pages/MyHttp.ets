// import { http } from '@kit.NetworkKit';
// import { BusinessError } from '@kit.BasicServicesKit';
//
//
// function getUser(url:string,username:string):Promise<object>{
//   return new Promise((resolve,reject)=>{
//     console.log("http请求的值是"+username)
//     //网络请求对象，返回结果装载到 Promise 对象当中
//     // 每一个httpRequest对应一个HTTP请求任务，不可复用
//     let httpRequest = http.createHttp();
//     httpRequest.request(
//       // 填写HTTP请求的URL地址，可以带参数也可以不带参数。URL地址需要开发者自定义。请求的参数可以在extraData中指定
//       url,
//       {
//         method: http.RequestMethod.POST, // 可选，默认为http.RequestMethod.GET
//         // 开发者根据自身业务需要添加header字段
//         header: {
//           'Content-Type': 'application/json'
//         },
//         expectDataType: 1, // 可选，指定返回数据的类型
//         // 当使用POST请求时此字段用于传递内容
//         extraData: {
//           "username":username
//
//         },
//
//       }, (err: BusinessError, data: http.HttpResponse) => {
//       if (!err) {
//         // data.result为HTTP响应内容，可根据业务需要进行解析
//         console.info('Result:' + JSON.stringify(data));
//         //将正确的结果返回
//         resolve(data)
//
//       } else {
//         console.error('error:' + JSON.stringify(err));
//         reject(err)
//
//       }
//     }
//     );
//
//
//   })
// }
//
// //请求网络数据函数
// function getInternetData(url:string,type:number):Promise<string>{
//
//   return new Promise((resolve,reject)=>{
//
//     // 每一个httpRequest对应一个HTTP请求任务，不可复用
//     let httpRequest = http.createHttp();
//
//     httpRequest.request(
//       // 填写HTTP请求的URL地址，可以带参数也可以不带参数。URL地址需要开发者自定义。请求的参数可以在extraData中指定
//       url,
//       {
//         method: http.RequestMethod.GET, // 可选，默认为http.RequestMethod.GET
//         // 开发者根据自身业务需要添加header字段
//         header: {
//           'Content-Type': 'application/json'
//         },
//         expectDataType: type,
//       }, (err: BusinessError, data: http.HttpResponse) => {
//       if (!err) {
//         // data.result为HTTP响应内容，可根据业务需要进行解析
//         console.info('Result:' + JSON.stringify(data.result));
//         // 当该请求使用完毕时，调用destroy方法主动销毁
//         //如果成功通过 resolve返回数据给前端页面,返回json字符串 "{name:"",age:"",hobby:""}"
//         resolve(JSON.stringify(data.result))
//       } else {
//         console.error('error:' + JSON.stringify(err));
//         //如果请求网络信息失败，通过reject返回
//         reject(JSON.stringify(err))
//       }
//     }
//     );
//
//   })
// }
//
// export{getInternetData,getUser}

import { http } from '@kit.NetworkKit';
import { BusinessError } from '@kit.BasicServicesKit';

// 定义User接口
interface User {
  username: string;
  password: string;
}

// 获取用户信息
function getUser(url: string, username: string): Promise<object> {
  return new Promise((resolve, reject) => {
    console.log("http请求的用户名是: " + username);

    // 创建一个HTTP请求对象
    let httpRequest = http.createHttp();

    // 发起HTTP请求
    httpRequest.request(
      url, // 请求的URL
      {
        method: http.RequestMethod.POST, // 请求方法为POST
        header: {
          'Content-Type': 'application/json', // 设置请求头为JSON
        },
        expectDataType: 1, // 设置期望返回的数据类型
        extraData: {
          "username": username, // 请求体数据，传递用户名
        },
      },
      (err: BusinessError, data: http.HttpResponse) => {
        if (!err) {
          // 请求成功，返回数据
          console.info('Result: ' + JSON.stringify(data));
          resolve(data); // 将HTTP响应数据传递给Promise
        } else {
          // 请求失败，返回错误信息
          console.error('Error: ' + JSON.stringify(err));
          reject(err); // 将错误信息传递给Promise
        }
      }
    );
  });
}

// 获取互联网数据
function getInternetData(url: string, type: number): Promise<string> {
  return new Promise((resolve, reject) => {
    // 创建一个HTTP请求对象
    let httpRequest = http.createHttp();

    // 发起HTTP请求
    httpRequest.request(
      url, // 请求的URL
      {
        method: http.RequestMethod.GET, // 请求方法为GET
        header: {
          'Content-Type': 'application/json', // 设置请求头为JSON
        },
        expectDataType: type, // 期望返回的数据类型
      },
      (err: BusinessError, data: http.HttpResponse) => {
        if (!err) {
          // 请求成功，返回数据
          console.info('Result: ' + JSON.stringify(data.result));
          resolve(JSON.stringify(data.result)); // 将返回结果转换为JSON字符串并传递给Promise
        } else {
          // 请求失败，返回错误信息
          console.error('Error: ' + JSON.stringify(err));
          reject(JSON.stringify(err)); // 将错误信息传递给Promise
        }
      }
    );
  });
}

function postUser(url: string, user: User): Promise<object> {
  return new Promise((resolve, reject) => {
    console.log("http请求的用户名是: " + user.username);

    // 创建一个HTTP请求对象
    let httpRequest = http.createHttp();

    // 发起POST请求进行注册
    httpRequest.request(
      url, // 请求的URL
      {
        method: http.RequestMethod.POST, // 请求方法为POST
        header: {
          'Content-Type': 'application/json', // 设置请求头为JSON
        },
        expectDataType: 1, // 设置期望返回的数据类型
        extraData: {
          "username": user.username, // 传递用户名
          "password": user.password, // 传递密码
        },
      },
      (err: BusinessError, data: http.HttpResponse) => {
        if (!err) {
          // 请求成功，返回数据
          console.info('注册成功，返回结果: ' + JSON.stringify(data));
          resolve(data); // 将HTTP响应数据传递给Promise
        } else {
          // 请求失败，返回错误信息
          console.error('注册失败，错误信息: ' + JSON.stringify(err));
          reject(err); // 将错误信息传递给Promise
        }
      }
    );
  });
}


// 导出函数
export { getInternetData, getUser, postUser };
