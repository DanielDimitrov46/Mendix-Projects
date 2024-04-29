import t, { forwardRef, useEffect, useReducer, useState, useRef, isValidElement, cloneElement, useLayoutEffect, createElement } from 'react';

function r(e) {
  var t,
    f,
    n = "";
  if ("string" == typeof e || "number" == typeof e) n += e;else if ("object" == typeof e) if (Array.isArray(e)) for (t = 0; t < e.length; t++) e[t] && (f = r(e[t])) && (n && (n += " "), n += f);else for (t in e) e[t] && (n && (n += " "), n += t);
  return n;
}
function clsx() {
  for (var e, t, f = 0, n = ""; f < arguments.length;) (e = arguments[f++]) && (t = r(e)) && (n && (n += " "), n += t);
  return n;
}

const u = t => "number" == typeof t && !isNaN(t),
  d = t => "string" == typeof t,
  p = t => "function" == typeof t,
  m = t => d(t) || p(t) ? t : null,
  f = t => isValidElement(t) || d(t) || p(t) || u(t);
function g(t, e, n) {
  void 0 === n && (n = 300);
  const {
    scrollHeight: o,
    style: s
  } = t;
  requestAnimationFrame(() => {
    s.minHeight = "initial", s.height = o + "px", s.transition = `all ${n}ms`, requestAnimationFrame(() => {
      s.height = "0", s.padding = "0", s.margin = "0", setTimeout(e, n);
    });
  });
}
function h(e) {
  let {
    enter: a,
    exit: r,
    appendPosition: i = !1,
    collapse: l = !0,
    collapseDuration: c = 300
  } = e;
  return function (e) {
    let {
      children: u,
      position: d,
      preventExitTransition: p,
      done: m,
      nodeRef: f,
      isIn: h
    } = e;
    const y = i ? `${a}--${d}` : a,
      v = i ? `${r}--${d}` : r,
      T = useRef(0);
    return useLayoutEffect(() => {
      const t = f.current,
        e = y.split(" "),
        n = o => {
          o.target === f.current && (t.dispatchEvent(new Event("d")), t.removeEventListener("animationend", n), t.removeEventListener("animationcancel", n), 0 === T.current && "animationcancel" !== o.type && t.classList.remove(...e));
        };
      t.classList.add(...e), t.addEventListener("animationend", n), t.addEventListener("animationcancel", n);
    }, []), useEffect(() => {
      const t = f.current,
        e = () => {
          t.removeEventListener("animationend", e), l ? g(t, m, c) : m();
        };
      h || (p ? e() : (T.current = 1, t.className += ` ${v}`, t.addEventListener("animationend", e)));
    }, [h]), t.createElement(t.Fragment, null, u);
  };
}
function y(t, e) {
  return {
    content: t.content,
    containerId: t.props.containerId,
    id: t.props.toastId,
    theme: t.props.theme,
    type: t.props.type,
    data: t.props.data || {},
    isLoading: t.props.isLoading,
    icon: t.props.icon,
    status: e
  };
}
const v = {
    list: new Map(),
    emitQueue: new Map(),
    on(t, e) {
      return this.list.has(t) || this.list.set(t, []), this.list.get(t).push(e), this;
    },
    off(t, e) {
      if (e) {
        const n = this.list.get(t).filter(t => t !== e);
        return this.list.set(t, n), this;
      }
      return this.list.delete(t), this;
    },
    cancelEmit(t) {
      const e = this.emitQueue.get(t);
      return e && (e.forEach(clearTimeout), this.emitQueue.delete(t)), this;
    },
    emit(t) {
      this.list.has(t) && this.list.get(t).forEach(e => {
        const n = setTimeout(() => {
          e(...[].slice.call(arguments, 1));
        }, 0);
        this.emitQueue.has(t) || this.emitQueue.set(t, []), this.emitQueue.get(t).push(n);
      });
    }
  },
  T = e => {
    let {
      theme: n,
      type: o,
      ...s
    } = e;
    return t.createElement("svg", {
      viewBox: "0 0 24 24",
      width: "100%",
      height: "100%",
      fill: "colored" === n ? "currentColor" : `var(--toastify-icon-color-${o})`,
      ...s
    });
  },
  E = {
    info: function (e) {
      return t.createElement(T, {
        ...e
      }, t.createElement("path", {
        d: "M12 0a12 12 0 1012 12A12.013 12.013 0 0012 0zm.25 5a1.5 1.5 0 11-1.5 1.5 1.5 1.5 0 011.5-1.5zm2.25 13.5h-4a1 1 0 010-2h.75a.25.25 0 00.25-.25v-4.5a.25.25 0 00-.25-.25h-.75a1 1 0 010-2h1a2 2 0 012 2v4.75a.25.25 0 00.25.25h.75a1 1 0 110 2z"
      }));
    },
    warning: function (e) {
      return t.createElement(T, {
        ...e
      }, t.createElement("path", {
        d: "M23.32 17.191L15.438 2.184C14.728.833 13.416 0 11.996 0c-1.42 0-2.733.833-3.443 2.184L.533 17.448a4.744 4.744 0 000 4.368C1.243 23.167 2.555 24 3.975 24h16.05C22.22 24 24 22.044 24 19.632c0-.904-.251-1.746-.68-2.44zm-9.622 1.46c0 1.033-.724 1.823-1.698 1.823s-1.698-.79-1.698-1.822v-.043c0-1.028.724-1.822 1.698-1.822s1.698.79 1.698 1.822v.043zm.039-12.285l-.84 8.06c-.057.581-.408.943-.897.943-.49 0-.84-.367-.896-.942l-.84-8.065c-.057-.624.25-1.095.779-1.095h1.91c.528.005.84.476.784 1.1z"
      }));
    },
    success: function (e) {
      return t.createElement(T, {
        ...e
      }, t.createElement("path", {
        d: "M12 0a12 12 0 1012 12A12.014 12.014 0 0012 0zm6.927 8.2l-6.845 9.289a1.011 1.011 0 01-1.43.188l-4.888-3.908a1 1 0 111.25-1.562l4.076 3.261 6.227-8.451a1 1 0 111.61 1.183z"
      }));
    },
    error: function (e) {
      return t.createElement(T, {
        ...e
      }, t.createElement("path", {
        d: "M11.983 0a12.206 12.206 0 00-8.51 3.653A11.8 11.8 0 000 12.207 11.779 11.779 0 0011.8 24h.214A12.111 12.111 0 0024 11.791 11.766 11.766 0 0011.983 0zM10.5 16.542a1.476 1.476 0 011.449-1.53h.027a1.527 1.527 0 011.523 1.47 1.475 1.475 0 01-1.449 1.53h-.027a1.529 1.529 0 01-1.523-1.47zM11 12.5v-6a1 1 0 012 0v6a1 1 0 11-2 0z"
      }));
    },
    spinner: function () {
      return t.createElement("div", {
        className: "Toastify__spinner"
      });
    }
  };
function C(t) {
  const [, o] = useReducer(t => t + 1, 0),
    [l, c] = useState([]),
    g = useRef(null),
    h = useRef(new Map()).current,
    T = t => -1 !== l.indexOf(t),
    C = useRef({
      toastKey: 1,
      displayedToast: 0,
      count: 0,
      queue: [],
      props: t,
      containerId: null,
      isToastActive: T,
      getToast: t => h.get(t)
    }).current;
  function b(t) {
    let {
      containerId: e
    } = t;
    const {
      limit: n
    } = C.props;
    !n || e && C.containerId !== e || (C.count -= C.queue.length, C.queue = []);
  }
  function I(t) {
    c(e => null == t ? [] : e.filter(e => e !== t));
  }
  function _() {
    const {
      toastContent: t,
      toastProps: e,
      staleId: n
    } = C.queue.shift();
    O(t, e, n);
  }
  function L(t, n) {
    let {
      delay: s,
      staleId: r,
      ...i
    } = n;
    if (!f(t) || function (t) {
      return !g.current || C.props.enableMultiContainer && t.containerId !== C.props.containerId || h.has(t.toastId) && null == t.updateId;
    }(i)) return;
    const {
        toastId: l,
        updateId: c,
        data: T
      } = i,
      {
        props: b
      } = C,
      L = () => I(l),
      N = null == c;
    N && C.count++;
    const M = {
      ...b,
      style: b.toastStyle,
      key: C.toastKey++,
      ...Object.fromEntries(Object.entries(i).filter(t => {
        let [e, n] = t;
        return null != n;
      })),
      toastId: l,
      updateId: c,
      data: T,
      closeToast: L,
      isIn: !1,
      className: m(i.className || b.toastClassName),
      bodyClassName: m(i.bodyClassName || b.bodyClassName),
      progressClassName: m(i.progressClassName || b.progressClassName),
      autoClose: !i.isLoading && (R = i.autoClose, w = b.autoClose, !1 === R || u(R) && R > 0 ? R : w),
      deleteToast() {
        const t = y(h.get(l), "removed");
        h.delete(l), v.emit(4, t);
        const e = C.queue.length;
        if (C.count = null == l ? C.count - C.displayedToast : C.count - 1, C.count < 0 && (C.count = 0), e > 0) {
          const t = null == l ? C.props.limit : 1;
          if (1 === e || 1 === t) C.displayedToast++, _();else {
            const n = t > e ? e : t;
            C.displayedToast = n;
            for (let t = 0; t < n; t++) _();
          }
        } else o();
      }
    };
    var R, w;
    M.iconOut = function (t) {
      let {
          theme: n,
          type: o,
          isLoading: s,
          icon: r
        } = t,
        i = null;
      const l = {
        theme: n,
        type: o
      };
      return !1 === r || (p(r) ? i = r(l) : isValidElement(r) ? i = cloneElement(r, l) : d(r) || u(r) ? i = r : s ? i = E.spinner() : (t => t in E)(o) && (i = E[o](l))), i;
    }(M), p(i.onOpen) && (M.onOpen = i.onOpen), p(i.onClose) && (M.onClose = i.onClose), M.closeButton = b.closeButton, !1 === i.closeButton || f(i.closeButton) ? M.closeButton = i.closeButton : !0 === i.closeButton && (M.closeButton = !f(b.closeButton) || b.closeButton);
    let x = t;
    isValidElement(t) && !d(t.type) ? x = cloneElement(t, {
      closeToast: L,
      toastProps: M,
      data: T
    }) : p(t) && (x = t({
      closeToast: L,
      toastProps: M,
      data: T
    })), b.limit && b.limit > 0 && C.count > b.limit && N ? C.queue.push({
      toastContent: x,
      toastProps: M,
      staleId: r
    }) : u(s) ? setTimeout(() => {
      O(x, M, r);
    }, s) : O(x, M, r);
  }
  function O(t, e, n) {
    const {
      toastId: o
    } = e;
    n && h.delete(n);
    const s = {
      content: t,
      props: e
    };
    h.set(o, s), c(t => [...t, o].filter(t => t !== n)), v.emit(4, y(s, null == s.props.updateId ? "added" : "updated"));
  }
  return useEffect(() => (C.containerId = t.containerId, v.cancelEmit(3).on(0, L).on(1, t => g.current && I(t)).on(5, b).emit(2, C), () => {
    h.clear(), v.emit(3, C);
  }), []), useEffect(() => {
    C.props = t, C.isToastActive = T, C.displayedToast = l.length;
  }), {
    getToastToRender: function (e) {
      const n = new Map(),
        o = Array.from(h.values());
      return t.newestOnTop && o.reverse(), o.forEach(t => {
        const {
          position: e
        } = t.props;
        n.has(e) || n.set(e, []), n.get(e).push(t);
      }), Array.from(n, t => e(t[0], t[1]));
    },
    containerRef: g,
    isToastActive: T
  };
}
function b(t) {
  return t.targetTouches && t.targetTouches.length >= 1 ? t.targetTouches[0].clientX : t.clientX;
}
function I(t) {
  return t.targetTouches && t.targetTouches.length >= 1 ? t.targetTouches[0].clientY : t.clientY;
}
function _(t) {
  const [o, a] = useState(!1),
    [r, l] = useState(!1),
    c = useRef(null),
    u = useRef({
      start: 0,
      x: 0,
      y: 0,
      delta: 0,
      removalDistance: 0,
      canCloseOnClick: !0,
      canDrag: !1,
      boundingRect: null,
      didMove: !1
    }).current,
    d = useRef(t),
    {
      autoClose: m,
      pauseOnHover: f,
      closeToast: g,
      onClick: h,
      closeOnClick: y
    } = t;
  function v(e) {
    if (t.draggable) {
      "touchstart" === e.nativeEvent.type && e.nativeEvent.preventDefault(), u.didMove = !1, document.addEventListener("mousemove", _), document.addEventListener("mouseup", L), document.addEventListener("touchmove", _), document.addEventListener("touchend", L);
      const n = c.current;
      u.canCloseOnClick = !0, u.canDrag = !0, u.boundingRect = n.getBoundingClientRect(), n.style.transition = "", u.x = b(e.nativeEvent), u.y = I(e.nativeEvent), "x" === t.draggableDirection ? (u.start = u.x, u.removalDistance = n.offsetWidth * (t.draggablePercent / 100)) : (u.start = u.y, u.removalDistance = n.offsetHeight * (80 === t.draggablePercent ? 1.5 * t.draggablePercent : t.draggablePercent / 100));
    }
  }
  function T(e) {
    if (u.boundingRect) {
      const {
        top: n,
        bottom: o,
        left: s,
        right: a
      } = u.boundingRect;
      "touchend" !== e.nativeEvent.type && t.pauseOnHover && u.x >= s && u.x <= a && u.y >= n && u.y <= o ? C() : E();
    }
  }
  function E() {
    a(!0);
  }
  function C() {
    a(!1);
  }
  function _(e) {
    const n = c.current;
    u.canDrag && n && (u.didMove = !0, o && C(), u.x = b(e), u.y = I(e), u.delta = "x" === t.draggableDirection ? u.x - u.start : u.y - u.start, u.start !== u.x && (u.canCloseOnClick = !1), n.style.transform = `translate${t.draggableDirection}(${u.delta}px)`, n.style.opacity = "" + (1 - Math.abs(u.delta / u.removalDistance)));
  }
  function L() {
    document.removeEventListener("mousemove", _), document.removeEventListener("mouseup", L), document.removeEventListener("touchmove", _), document.removeEventListener("touchend", L);
    const e = c.current;
    if (u.canDrag && u.didMove && e) {
      if (u.canDrag = !1, Math.abs(u.delta) > u.removalDistance) return l(!0), void t.closeToast();
      e.style.transition = "transform 0.2s, opacity 0.2s", e.style.transform = `translate${t.draggableDirection}(0)`, e.style.opacity = "1";
    }
  }
  useEffect(() => {
    d.current = t;
  }), useEffect(() => (c.current && c.current.addEventListener("d", E, {
    once: !0
  }), p(t.onOpen) && t.onOpen(isValidElement(t.children) && t.children.props), () => {
    const t = d.current;
    p(t.onClose) && t.onClose(isValidElement(t.children) && t.children.props);
  }), []), useEffect(() => (t.pauseOnFocusLoss && (document.hasFocus() || C(), window.addEventListener("focus", E), window.addEventListener("blur", C)), () => {
    t.pauseOnFocusLoss && (window.removeEventListener("focus", E), window.removeEventListener("blur", C));
  }), [t.pauseOnFocusLoss]);
  const O = {
    onMouseDown: v,
    onTouchStart: v,
    onMouseUp: T,
    onTouchEnd: T
  };
  return m && f && (O.onMouseEnter = C, O.onMouseLeave = E), y && (O.onClick = t => {
    h && h(t), u.canCloseOnClick && g();
  }), {
    playToast: E,
    pauseToast: C,
    isRunning: o,
    preventExitTransition: r,
    toastRef: c,
    eventHandlers: O
  };
}
function L(e) {
  let {
    closeToast: n,
    theme: o,
    ariaLabel: s = "close"
  } = e;
  return t.createElement("button", {
    className: `Toastify__close-button Toastify__close-button--${o}`,
    type: "button",
    onClick: t => {
      t.stopPropagation(), n(t);
    },
    "aria-label": s
  }, t.createElement("svg", {
    "aria-hidden": "true",
    viewBox: "0 0 14 16"
  }, t.createElement("path", {
    fillRule: "evenodd",
    d: "M7.71 8.23l3.75 3.75-1.48 1.48-3.75-3.75-3.75 3.75L1 11.98l3.75-3.75L1 4.48 2.48 3l3.75 3.75L9.98 3l1.48 1.48-3.75 3.75z"
  })));
}
function O(e) {
  let {
    delay: n,
    isRunning: o,
    closeToast: s,
    type: a = "default",
    hide: r,
    className: i,
    style: l,
    controlledProgress: u,
    progress: d,
    rtl: m,
    isIn: f,
    theme: g
  } = e;
  const h = r || u && 0 === d,
    y = {
      ...l,
      animationDuration: `${n}ms`,
      animationPlayState: o ? "running" : "paused",
      opacity: h ? 0 : 1
    };
  u && (y.transform = `scaleX(${d})`);
  const v = clsx("Toastify__progress-bar", u ? "Toastify__progress-bar--controlled" : "Toastify__progress-bar--animated", `Toastify__progress-bar-theme--${g}`, `Toastify__progress-bar--${a}`, {
      "Toastify__progress-bar--rtl": m
    }),
    T = p(i) ? i({
      rtl: m,
      type: a,
      defaultClassName: v
    }) : clsx(v, i);
  return t.createElement("div", {
    role: "progressbar",
    "aria-hidden": h ? "true" : "false",
    "aria-label": "notification timer",
    className: T,
    style: y,
    [u && d >= 1 ? "onTransitionEnd" : "onAnimationEnd"]: u && d < 1 ? null : () => {
      f && s();
    }
  });
}
const N = n => {
    const {
        isRunning: o,
        preventExitTransition: s,
        toastRef: r,
        eventHandlers: i
      } = _(n),
      {
        closeButton: l,
        children: u,
        autoClose: d,
        onClick: m,
        type: f,
        hideProgressBar: g,
        closeToast: h,
        transition: y,
        position: v,
        className: T,
        style: E,
        bodyClassName: C,
        bodyStyle: b,
        progressClassName: I,
        progressStyle: N,
        updateId: M,
        role: R,
        progress: w,
        rtl: x,
        toastId: $,
        deleteToast: k,
        isIn: P,
        isLoading: B,
        iconOut: D,
        closeOnClick: A,
        theme: z
      } = n,
      F = clsx("Toastify__toast", `Toastify__toast-theme--${z}`, `Toastify__toast--${f}`, {
        "Toastify__toast--rtl": x
      }, {
        "Toastify__toast--close-on-click": A
      }),
      H = p(T) ? T({
        rtl: x,
        position: v,
        type: f,
        defaultClassName: F
      }) : clsx(F, T),
      S = !!w || !d,
      q = {
        closeToast: h,
        type: f,
        theme: z
      };
    let Q = null;
    return !1 === l || (Q = p(l) ? l(q) : isValidElement(l) ? cloneElement(l, q) : L(q)), t.createElement(y, {
      isIn: P,
      done: k,
      position: v,
      preventExitTransition: s,
      nodeRef: r
    }, t.createElement("div", {
      id: $,
      onClick: m,
      className: H,
      ...i,
      style: E,
      ref: r
    }, t.createElement("div", {
      ...(P && {
        role: R
      }),
      className: p(C) ? C({
        type: f
      }) : clsx("Toastify__toast-body", C),
      style: b
    }, null != D && t.createElement("div", {
      className: clsx("Toastify__toast-icon", {
        "Toastify--animate-icon Toastify__zoom-enter": !B
      })
    }, D), t.createElement("div", null, u)), Q, t.createElement(O, {
      ...(M && !S ? {
        key: `pb-${M}`
      } : {}),
      rtl: x,
      theme: z,
      delay: d,
      isRunning: o,
      isIn: P,
      closeToast: h,
      hide: g,
      type: f,
      style: N,
      className: I,
      controlledProgress: S,
      progress: w || 0
    })));
  },
  M = function (t, e) {
    return void 0 === e && (e = !1), {
      enter: `Toastify--animate Toastify__${t}-enter`,
      exit: `Toastify--animate Toastify__${t}-exit`,
      appendPosition: e
    };
  },
  R = h(M("bounce", !0)),
  w = h(M("slide", !0)),
  x = h(M("zoom")),
  $ = h(M("flip")),
  k = forwardRef((e, n) => {
    const {
        getToastToRender: o,
        containerRef: a,
        isToastActive: r
      } = C(e),
      {
        className: i,
        style: l,
        rtl: u,
        containerId: d
      } = e;
    function f(t) {
      const e = clsx("Toastify__toast-container", `Toastify__toast-container--${t}`, {
        "Toastify__toast-container--rtl": u
      });
      return p(i) ? i({
        position: t,
        rtl: u,
        defaultClassName: e
      }) : clsx(e, m(i));
    }
    return useEffect(() => {
      n && (n.current = a.current);
    }, []), t.createElement("div", {
      ref: a,
      className: "Toastify",
      id: d
    }, o((e, n) => {
      const o = n.length ? {
        ...l
      } : {
        ...l,
        pointerEvents: "none"
      };
      return t.createElement("div", {
        className: f(e),
        style: o,
        key: `container-${e}`
      }, n.map((e, o) => {
        let {
          content: s,
          props: a
        } = e;
        return t.createElement(N, {
          ...a,
          isIn: r(a.toastId),
          style: {
            ...a.style,
            "--nth": o + 1,
            "--len": n.length
          },
          key: `toast-${a.key}`
        }, s);
      }));
    }));
  });
k.displayName = "ToastContainer", k.defaultProps = {
  position: "top-right",
  transition: R,
  autoClose: 5e3,
  closeButton: L,
  pauseOnHover: !0,
  pauseOnFocusLoss: !0,
  closeOnClick: !0,
  draggable: !0,
  draggablePercent: 80,
  draggableDirection: "x",
  role: "alert",
  theme: "light"
};
let P,
  B = new Map(),
  D = [],
  A = 1;
function z() {
  return "" + A++;
}
function F(t) {
  return t && (d(t.toastId) || u(t.toastId)) ? t.toastId : z();
}
function H(t, e) {
  return B.size > 0 ? v.emit(0, t, e) : D.push({
    content: t,
    options: e
  }), e.toastId;
}
function S(t, e) {
  return {
    ...e,
    type: e && e.type || t,
    toastId: F(e)
  };
}
function q(t) {
  return (e, n) => H(e, S(t, n));
}
function Q(t, e) {
  return H(t, S("default", e));
}
Q.loading = (t, e) => H(t, S("default", {
  isLoading: !0,
  autoClose: !1,
  closeOnClick: !1,
  closeButton: !1,
  draggable: !1,
  ...e
})), Q.promise = function (t, e, n) {
  let o,
    {
      pending: s,
      error: a,
      success: r
    } = e;
  s && (o = d(s) ? Q.loading(s, n) : Q.loading(s.render, {
    ...n,
    ...s
  }));
  const i = {
      isLoading: null,
      autoClose: null,
      closeOnClick: null,
      closeButton: null,
      draggable: null
    },
    l = (t, e, s) => {
      if (null == e) return void Q.dismiss(o);
      const a = {
          type: t,
          ...i,
          ...n,
          data: s
        },
        r = d(e) ? {
          render: e
        } : e;
      return o ? Q.update(o, {
        ...a,
        ...r
      }) : Q(r.render, {
        ...a,
        ...r
      }), s;
    },
    c = p(t) ? t() : t;
  return c.then(t => l("success", r, t)).catch(t => l("error", a, t)), c;
}, Q.success = q("success"), Q.info = q("info"), Q.error = q("error"), Q.warning = q("warning"), Q.warn = Q.warning, Q.dark = (t, e) => H(t, S("default", {
  theme: "dark",
  ...e
})), Q.dismiss = t => {
  B.size > 0 ? v.emit(1, t) : D = D.filter(e => null != t && e.options.toastId !== t);
}, Q.clearWaitingQueue = function (t) {
  return void 0 === t && (t = {}), v.emit(5, t);
}, Q.isActive = t => {
  let e = !1;
  return B.forEach(n => {
    n.isToastActive && n.isToastActive(t) && (e = !0);
  }), e;
}, Q.update = function (t, e) {
  void 0 === e && (e = {}), setTimeout(() => {
    const n = function (t, e) {
      let {
        containerId: n
      } = e;
      const o = B.get(n || P);
      return o && o.getToast(t);
    }(t, e);
    if (n) {
      const {
          props: o,
          content: s
        } = n,
        a = {
          delay: 100,
          ...o,
          ...e,
          toastId: e.toastId || t,
          updateId: z()
        };
      a.toastId !== t && (a.staleId = t);
      const r = a.render || s;
      delete a.render, H(r, a);
    }
  }, 0);
}, Q.done = t => {
  Q.update(t, {
    progress: 1
  });
}, Q.onChange = t => (v.on(4, t), () => {
  v.off(4, t);
}), Q.POSITION = {
  TOP_LEFT: "top-left",
  TOP_RIGHT: "top-right",
  TOP_CENTER: "top-center",
  BOTTOM_LEFT: "bottom-left",
  BOTTOM_RIGHT: "bottom-right",
  BOTTOM_CENTER: "bottom-center"
}, Q.TYPE = {
  INFO: "info",
  SUCCESS: "success",
  WARNING: "warning",
  ERROR: "error",
  DEFAULT: "default"
}, v.on(2, t => {
  P = t.containerId || t, B.set(P, t), D.forEach(t => {
    v.emit(0, t.content, t.options);
  }), D = [];
}).on(3, t => {
  B.delete(t.containerId || t), 0 === B.size && v.off(0).off(1).off(5);
});

function FeedbackNotification(props) {
  useEffect(() => {
    // If new items retrieved, create toast messages
    if (props.datasourceNotifications.items) {
      for (let itemIndex in props.datasourceNotifications.items) {
        const notification = props.datasourceNotifications.items[itemIndex];
        Q(getNotificationText(notification), {
          type: getNotificationType(notification),
          autoClose: getNotificationAutoClose(notification),
          className: getNotificationClassName(notification),
          onClose: () => executeCloseAction(notification),
          theme: getNotificationTheme(notification),
          icon: getNotificationShowIcon(notification)
        });
        executeShowAction(notification);
      }
    }
  }, [props.datasourceNotifications.items]);
  const executeShowAction = notification => {
    //Execute the on show action if needed
    if (props.onShowAction && props.onShowAction.get(notification).canExecute) {
      props.onShowAction.get(notification).execute();
    }
  };
  const executeCloseAction = notification => {
    //Execute the on close action if needed
    if (props.onCloseAction && props.onCloseAction.get(notification).canExecute) {
      props.onCloseAction.get(notification).execute();
    }
  };
  const getNotificationText = notification => {
    return props.notificationText.get(notification).value;
  };
  const getNotificationShowIcon = notification => {
    let showIcon = props.showIcon.get(notification).value;
    return showIcon ? undefined : false;
  };
  const getNotificationClassName = notification => {
    if (props.className) {
      return props.className.get(notification).value;
    }
    return '';
  };
  const getNotificationType = notification => {
    if (props.notificationType) {
      let notificationType = props.notificationType.get(notification).value.toLowerCase();
      if (notificationType !== 'info' && notificationType !== 'default' && notificationType !== 'success' && notificationType !== 'warning' && notificationType !== 'error') {
        return 'info';
      } else {
        return notificationType;
      }
    }
    return 'info';
  };
  const getNotificationTheme = notification => {
    if (props.notificationTheme) {
      let theme = props.notificationTheme.get(notification).value.toLowerCase();
      if (theme === 'light' || theme === 'dark' || theme === 'colored') {
        return theme;
      }
    }
    return 'light';
  };
  const getNotificationAutoClose = notification => {
    let autoClose = parseInt(props.autoClose.get(notification).value, undefined);
    // If autoclose is 0, set to false, then user has to close message himself
    return autoClose === 0 ? false : autoClose;
  };
  const getPosition = () => {
    // Convert position
    if (props.position === 'topLeft') {
      return 'top-left';
    } else if (props.position === 'topRight') {
      return 'top-right';
    } else if (props.position === 'topCenter') {
      return 'top-center';
    } else if (props.position === 'bottomRight') {
      return 'bottom-right';
    } else if (props.position === 'bottomLeft') {
      return 'bottom-left';
    } else {
      return 'bottom-center';
    }
  };
  const getTransition = () => {
    // Convert transition prop to actual transition
    if (props.transition === 'Slide') {
      return w;
    } else if (props.transition === 'Zoom') {
      return x;
    } else if (props.transition === 'Flip') {
      return $;
    } else {
      return R;
    }
  };
  return createElement(k, {
    position: getPosition(),
    closeButton: props.closeButton,
    closeOnClick: props.closeOnClick,
    draggable: props.draggable,
    draggablePercent: props.draggablePercent,
    transition: getTransition(),
    hideProgressBar: props.hideProgressBar,
    pauseOnHover: props.pauseOnHover,
    pauseOnFocusLoss: props.pauseOnFocusLoss,
    rtl: props.rtl,
    newestOnTop: props.newestOnTop,
    limit: props.limit.value && props.limit.value > 0 ? props.limit.value : undefined
  });
}

export { FeedbackNotification as default };
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiRmVlZGJhY2tOb3RpZmljYXRpb24ubWpzIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi9ub2RlX21vZHVsZXMvY2xzeC9kaXN0L2Nsc3gubS5qcyIsIi4uLy4uLy4uLy4uLy4uL25vZGVfbW9kdWxlcy9yZWFjdC10b2FzdGlmeS9kaXN0L3JlYWN0LXRvYXN0aWZ5LmVzbS5tanMiLCIuLi8uLi8uLi8uLi8uLi9zcmMvRmVlZGJhY2tOb3RpZmljYXRpb24uanN4Il0sInNvdXJjZXNDb250ZW50IjpbImZ1bmN0aW9uIHIoZSl7dmFyIHQsZixuPVwiXCI7aWYoXCJzdHJpbmdcIj09dHlwZW9mIGV8fFwibnVtYmVyXCI9PXR5cGVvZiBlKW4rPWU7ZWxzZSBpZihcIm9iamVjdFwiPT10eXBlb2YgZSlpZihBcnJheS5pc0FycmF5KGUpKWZvcih0PTA7dDxlLmxlbmd0aDt0KyspZVt0XSYmKGY9cihlW3RdKSkmJihuJiYobis9XCIgXCIpLG4rPWYpO2Vsc2UgZm9yKHQgaW4gZSllW3RdJiYobiYmKG4rPVwiIFwiKSxuKz10KTtyZXR1cm4gbn1leHBvcnQgZnVuY3Rpb24gY2xzeCgpe2Zvcih2YXIgZSx0LGY9MCxuPVwiXCI7Zjxhcmd1bWVudHMubGVuZ3RoOykoZT1hcmd1bWVudHNbZisrXSkmJih0PXIoZSkpJiYobiYmKG4rPVwiIFwiKSxuKz10KTtyZXR1cm4gbn1leHBvcnQgZGVmYXVsdCBjbHN4OyIsImltcG9ydCB0LHtpc1ZhbGlkRWxlbWVudCBhcyBlLHVzZVJlZiBhcyBuLHVzZUxheW91dEVmZmVjdCBhcyBvLHVzZUVmZmVjdCBhcyBzLGNsb25lRWxlbWVudCBhcyBhLHVzZVJlZHVjZXIgYXMgcix1c2VTdGF0ZSBhcyBpLGZvcndhcmRSZWYgYXMgbH1mcm9tXCJyZWFjdFwiO2ltcG9ydCBjIGZyb21cImNsc3hcIjtjb25zdCB1PXQ9PlwibnVtYmVyXCI9PXR5cGVvZiB0JiYhaXNOYU4odCksZD10PT5cInN0cmluZ1wiPT10eXBlb2YgdCxwPXQ9PlwiZnVuY3Rpb25cIj09dHlwZW9mIHQsbT10PT5kKHQpfHxwKHQpP3Q6bnVsbCxmPXQ9PmUodCl8fGQodCl8fHAodCl8fHUodCk7ZnVuY3Rpb24gZyh0LGUsbil7dm9pZCAwPT09biYmKG49MzAwKTtjb25zdHtzY3JvbGxIZWlnaHQ6byxzdHlsZTpzfT10O3JlcXVlc3RBbmltYXRpb25GcmFtZSgoKT0+e3MubWluSGVpZ2h0PVwiaW5pdGlhbFwiLHMuaGVpZ2h0PW8rXCJweFwiLHMudHJhbnNpdGlvbj1gYWxsICR7bn1tc2AscmVxdWVzdEFuaW1hdGlvbkZyYW1lKCgpPT57cy5oZWlnaHQ9XCIwXCIscy5wYWRkaW5nPVwiMFwiLHMubWFyZ2luPVwiMFwiLHNldFRpbWVvdXQoZSxuKX0pfSl9ZnVuY3Rpb24gaChlKXtsZXR7ZW50ZXI6YSxleGl0OnIsYXBwZW5kUG9zaXRpb246aT0hMSxjb2xsYXBzZTpsPSEwLGNvbGxhcHNlRHVyYXRpb246Yz0zMDB9PWU7cmV0dXJuIGZ1bmN0aW9uKGUpe2xldHtjaGlsZHJlbjp1LHBvc2l0aW9uOmQscHJldmVudEV4aXRUcmFuc2l0aW9uOnAsZG9uZTptLG5vZGVSZWY6Zixpc0luOmh9PWU7Y29uc3QgeT1pP2Ake2F9LS0ke2R9YDphLHY9aT9gJHtyfS0tJHtkfWA6cixUPW4oMCk7cmV0dXJuIG8oKCk9Pntjb25zdCB0PWYuY3VycmVudCxlPXkuc3BsaXQoXCIgXCIpLG49bz0+e28udGFyZ2V0PT09Zi5jdXJyZW50JiYodC5kaXNwYXRjaEV2ZW50KG5ldyBFdmVudChcImRcIikpLHQucmVtb3ZlRXZlbnRMaXN0ZW5lcihcImFuaW1hdGlvbmVuZFwiLG4pLHQucmVtb3ZlRXZlbnRMaXN0ZW5lcihcImFuaW1hdGlvbmNhbmNlbFwiLG4pLDA9PT1ULmN1cnJlbnQmJlwiYW5pbWF0aW9uY2FuY2VsXCIhPT1vLnR5cGUmJnQuY2xhc3NMaXN0LnJlbW92ZSguLi5lKSl9O3QuY2xhc3NMaXN0LmFkZCguLi5lKSx0LmFkZEV2ZW50TGlzdGVuZXIoXCJhbmltYXRpb25lbmRcIixuKSx0LmFkZEV2ZW50TGlzdGVuZXIoXCJhbmltYXRpb25jYW5jZWxcIixuKX0sW10pLHMoKCk9Pntjb25zdCB0PWYuY3VycmVudCxlPSgpPT57dC5yZW1vdmVFdmVudExpc3RlbmVyKFwiYW5pbWF0aW9uZW5kXCIsZSksbD9nKHQsbSxjKTptKCl9O2h8fChwP2UoKTooVC5jdXJyZW50PTEsdC5jbGFzc05hbWUrPWAgJHt2fWAsdC5hZGRFdmVudExpc3RlbmVyKFwiYW5pbWF0aW9uZW5kXCIsZSkpKX0sW2hdKSx0LmNyZWF0ZUVsZW1lbnQodC5GcmFnbWVudCxudWxsLHUpfX1mdW5jdGlvbiB5KHQsZSl7cmV0dXJue2NvbnRlbnQ6dC5jb250ZW50LGNvbnRhaW5lcklkOnQucHJvcHMuY29udGFpbmVySWQsaWQ6dC5wcm9wcy50b2FzdElkLHRoZW1lOnQucHJvcHMudGhlbWUsdHlwZTp0LnByb3BzLnR5cGUsZGF0YTp0LnByb3BzLmRhdGF8fHt9LGlzTG9hZGluZzp0LnByb3BzLmlzTG9hZGluZyxpY29uOnQucHJvcHMuaWNvbixzdGF0dXM6ZX19Y29uc3Qgdj17bGlzdDpuZXcgTWFwLGVtaXRRdWV1ZTpuZXcgTWFwLG9uKHQsZSl7cmV0dXJuIHRoaXMubGlzdC5oYXModCl8fHRoaXMubGlzdC5zZXQodCxbXSksdGhpcy5saXN0LmdldCh0KS5wdXNoKGUpLHRoaXN9LG9mZih0LGUpe2lmKGUpe2NvbnN0IG49dGhpcy5saXN0LmdldCh0KS5maWx0ZXIodD0+dCE9PWUpO3JldHVybiB0aGlzLmxpc3Quc2V0KHQsbiksdGhpc31yZXR1cm4gdGhpcy5saXN0LmRlbGV0ZSh0KSx0aGlzfSxjYW5jZWxFbWl0KHQpe2NvbnN0IGU9dGhpcy5lbWl0UXVldWUuZ2V0KHQpO3JldHVybiBlJiYoZS5mb3JFYWNoKGNsZWFyVGltZW91dCksdGhpcy5lbWl0UXVldWUuZGVsZXRlKHQpKSx0aGlzfSxlbWl0KHQpe3RoaXMubGlzdC5oYXModCkmJnRoaXMubGlzdC5nZXQodCkuZm9yRWFjaChlPT57Y29uc3Qgbj1zZXRUaW1lb3V0KCgpPT57ZSguLi5bXS5zbGljZS5jYWxsKGFyZ3VtZW50cywxKSl9LDApO3RoaXMuZW1pdFF1ZXVlLmhhcyh0KXx8dGhpcy5lbWl0UXVldWUuc2V0KHQsW10pLHRoaXMuZW1pdFF1ZXVlLmdldCh0KS5wdXNoKG4pfSl9fSxUPWU9PntsZXR7dGhlbWU6bix0eXBlOm8sLi4uc309ZTtyZXR1cm4gdC5jcmVhdGVFbGVtZW50KFwic3ZnXCIse3ZpZXdCb3g6XCIwIDAgMjQgMjRcIix3aWR0aDpcIjEwMCVcIixoZWlnaHQ6XCIxMDAlXCIsZmlsbDpcImNvbG9yZWRcIj09PW4/XCJjdXJyZW50Q29sb3JcIjpgdmFyKC0tdG9hc3RpZnktaWNvbi1jb2xvci0ke299KWAsLi4uc30pfSxFPXtpbmZvOmZ1bmN0aW9uKGUpe3JldHVybiB0LmNyZWF0ZUVsZW1lbnQoVCx7Li4uZX0sdC5jcmVhdGVFbGVtZW50KFwicGF0aFwiLHtkOlwiTTEyIDBhMTIgMTIgMCAxMDEyIDEyQTEyLjAxMyAxMi4wMTMgMCAwMDEyIDB6bS4yNSA1YTEuNSAxLjUgMCAxMS0xLjUgMS41IDEuNSAxLjUgMCAwMTEuNS0xLjV6bTIuMjUgMTMuNWgtNGExIDEgMCAwMTAtMmguNzVhLjI1LjI1IDAgMDAuMjUtLjI1di00LjVhLjI1LjI1IDAgMDAtLjI1LS4yNWgtLjc1YTEgMSAwIDAxMC0yaDFhMiAyIDAgMDEyIDJ2NC43NWEuMjUuMjUgMCAwMC4yNS4yNWguNzVhMSAxIDAgMTEwIDJ6XCJ9KSl9LHdhcm5pbmc6ZnVuY3Rpb24oZSl7cmV0dXJuIHQuY3JlYXRlRWxlbWVudChULHsuLi5lfSx0LmNyZWF0ZUVsZW1lbnQoXCJwYXRoXCIse2Q6XCJNMjMuMzIgMTcuMTkxTDE1LjQzOCAyLjE4NEMxNC43MjguODMzIDEzLjQxNiAwIDExLjk5NiAwYy0xLjQyIDAtMi43MzMuODMzLTMuNDQzIDIuMTg0TC41MzMgMTcuNDQ4YTQuNzQ0IDQuNzQ0IDAgMDAwIDQuMzY4QzEuMjQzIDIzLjE2NyAyLjU1NSAyNCAzLjk3NSAyNGgxNi4wNUMyMi4yMiAyNCAyNCAyMi4wNDQgMjQgMTkuNjMyYzAtLjkwNC0uMjUxLTEuNzQ2LS42OC0yLjQ0em0tOS42MjIgMS40NmMwIDEuMDMzLS43MjQgMS44MjMtMS42OTggMS44MjNzLTEuNjk4LS43OS0xLjY5OC0xLjgyMnYtLjA0M2MwLTEuMDI4LjcyNC0xLjgyMiAxLjY5OC0xLjgyMnMxLjY5OC43OSAxLjY5OCAxLjgyMnYuMDQzem0uMDM5LTEyLjI4NWwtLjg0IDguMDZjLS4wNTcuNTgxLS40MDguOTQzLS44OTcuOTQzLS40OSAwLS44NC0uMzY3LS44OTYtLjk0MmwtLjg0LTguMDY1Yy0uMDU3LS42MjQuMjUtMS4wOTUuNzc5LTEuMDk1aDEuOTFjLjUyOC4wMDUuODQuNDc2Ljc4NCAxLjF6XCJ9KSl9LHN1Y2Nlc3M6ZnVuY3Rpb24oZSl7cmV0dXJuIHQuY3JlYXRlRWxlbWVudChULHsuLi5lfSx0LmNyZWF0ZUVsZW1lbnQoXCJwYXRoXCIse2Q6XCJNMTIgMGExMiAxMiAwIDEwMTIgMTJBMTIuMDE0IDEyLjAxNCAwIDAwMTIgMHptNi45MjcgOC4ybC02Ljg0NSA5LjI4OWExLjAxMSAxLjAxMSAwIDAxLTEuNDMuMTg4bC00Ljg4OC0zLjkwOGExIDEgMCAxMTEuMjUtMS41NjJsNC4wNzYgMy4yNjEgNi4yMjctOC40NTFhMSAxIDAgMTExLjYxIDEuMTgzelwifSkpfSxlcnJvcjpmdW5jdGlvbihlKXtyZXR1cm4gdC5jcmVhdGVFbGVtZW50KFQsey4uLmV9LHQuY3JlYXRlRWxlbWVudChcInBhdGhcIix7ZDpcIk0xMS45ODMgMGExMi4yMDYgMTIuMjA2IDAgMDAtOC41MSAzLjY1M0ExMS44IDExLjggMCAwMDAgMTIuMjA3IDExLjc3OSAxMS43NzkgMCAwMDExLjggMjRoLjIxNEExMi4xMTEgMTIuMTExIDAgMDAyNCAxMS43OTEgMTEuNzY2IDExLjc2NiAwIDAwMTEuOTgzIDB6TTEwLjUgMTYuNTQyYTEuNDc2IDEuNDc2IDAgMDExLjQ0OS0xLjUzaC4wMjdhMS41MjcgMS41MjcgMCAwMTEuNTIzIDEuNDcgMS40NzUgMS40NzUgMCAwMS0xLjQ0OSAxLjUzaC0uMDI3YTEuNTI5IDEuNTI5IDAgMDEtMS41MjMtMS40N3pNMTEgMTIuNXYtNmExIDEgMCAwMTIgMHY2YTEgMSAwIDExLTIgMHpcIn0pKX0sc3Bpbm5lcjpmdW5jdGlvbigpe3JldHVybiB0LmNyZWF0ZUVsZW1lbnQoXCJkaXZcIix7Y2xhc3NOYW1lOlwiVG9hc3RpZnlfX3NwaW5uZXJcIn0pfX07ZnVuY3Rpb24gQyh0KXtjb25zdFssb109cih0PT50KzEsMCksW2wsY109aShbXSksZz1uKG51bGwpLGg9bihuZXcgTWFwKS5jdXJyZW50LFQ9dD0+LTEhPT1sLmluZGV4T2YodCksQz1uKHt0b2FzdEtleToxLGRpc3BsYXllZFRvYXN0OjAsY291bnQ6MCxxdWV1ZTpbXSxwcm9wczp0LGNvbnRhaW5lcklkOm51bGwsaXNUb2FzdEFjdGl2ZTpULGdldFRvYXN0OnQ9PmguZ2V0KHQpfSkuY3VycmVudDtmdW5jdGlvbiBiKHQpe2xldHtjb250YWluZXJJZDplfT10O2NvbnN0e2xpbWl0Om59PUMucHJvcHM7IW58fGUmJkMuY29udGFpbmVySWQhPT1lfHwoQy5jb3VudC09Qy5xdWV1ZS5sZW5ndGgsQy5xdWV1ZT1bXSl9ZnVuY3Rpb24gSSh0KXtjKGU9Pm51bGw9PXQ/W106ZS5maWx0ZXIoZT0+ZSE9PXQpKX1mdW5jdGlvbiBfKCl7Y29uc3R7dG9hc3RDb250ZW50OnQsdG9hc3RQcm9wczplLHN0YWxlSWQ6bn09Qy5xdWV1ZS5zaGlmdCgpO08odCxlLG4pfWZ1bmN0aW9uIEwodCxuKXtsZXR7ZGVsYXk6cyxzdGFsZUlkOnIsLi4uaX09bjtpZighZih0KXx8ZnVuY3Rpb24odCl7cmV0dXJuIWcuY3VycmVudHx8Qy5wcm9wcy5lbmFibGVNdWx0aUNvbnRhaW5lciYmdC5jb250YWluZXJJZCE9PUMucHJvcHMuY29udGFpbmVySWR8fGguaGFzKHQudG9hc3RJZCkmJm51bGw9PXQudXBkYXRlSWR9KGkpKXJldHVybjtjb25zdHt0b2FzdElkOmwsdXBkYXRlSWQ6YyxkYXRhOlR9PWkse3Byb3BzOmJ9PUMsTD0oKT0+SShsKSxOPW51bGw9PWM7TiYmQy5jb3VudCsrO2NvbnN0IE09ey4uLmIsc3R5bGU6Yi50b2FzdFN0eWxlLGtleTpDLnRvYXN0S2V5KyssLi4uT2JqZWN0LmZyb21FbnRyaWVzKE9iamVjdC5lbnRyaWVzKGkpLmZpbHRlcih0PT57bGV0W2Usbl09dDtyZXR1cm4gbnVsbCE9bn0pKSx0b2FzdElkOmwsdXBkYXRlSWQ6YyxkYXRhOlQsY2xvc2VUb2FzdDpMLGlzSW46ITEsY2xhc3NOYW1lOm0oaS5jbGFzc05hbWV8fGIudG9hc3RDbGFzc05hbWUpLGJvZHlDbGFzc05hbWU6bShpLmJvZHlDbGFzc05hbWV8fGIuYm9keUNsYXNzTmFtZSkscHJvZ3Jlc3NDbGFzc05hbWU6bShpLnByb2dyZXNzQ2xhc3NOYW1lfHxiLnByb2dyZXNzQ2xhc3NOYW1lKSxhdXRvQ2xvc2U6IWkuaXNMb2FkaW5nJiYoUj1pLmF1dG9DbG9zZSx3PWIuYXV0b0Nsb3NlLCExPT09Unx8dShSKSYmUj4wP1I6dyksZGVsZXRlVG9hc3QoKXtjb25zdCB0PXkoaC5nZXQobCksXCJyZW1vdmVkXCIpO2guZGVsZXRlKGwpLHYuZW1pdCg0LHQpO2NvbnN0IGU9Qy5xdWV1ZS5sZW5ndGg7aWYoQy5jb3VudD1udWxsPT1sP0MuY291bnQtQy5kaXNwbGF5ZWRUb2FzdDpDLmNvdW50LTEsQy5jb3VudDwwJiYoQy5jb3VudD0wKSxlPjApe2NvbnN0IHQ9bnVsbD09bD9DLnByb3BzLmxpbWl0OjE7aWYoMT09PWV8fDE9PT10KUMuZGlzcGxheWVkVG9hc3QrKyxfKCk7ZWxzZXtjb25zdCBuPXQ+ZT9lOnQ7Qy5kaXNwbGF5ZWRUb2FzdD1uO2ZvcihsZXQgdD0wO3Q8bjt0KyspXygpfX1lbHNlIG8oKX19O3ZhciBSLHc7TS5pY29uT3V0PWZ1bmN0aW9uKHQpe2xldHt0aGVtZTpuLHR5cGU6byxpc0xvYWRpbmc6cyxpY29uOnJ9PXQsaT1udWxsO2NvbnN0IGw9e3RoZW1lOm4sdHlwZTpvfTtyZXR1cm4hMT09PXJ8fChwKHIpP2k9cihsKTplKHIpP2k9YShyLGwpOmQocil8fHUocik/aT1yOnM/aT1FLnNwaW5uZXIoKToodD0+dCBpbiBFKShvKSYmKGk9RVtvXShsKSkpLGl9KE0pLHAoaS5vbk9wZW4pJiYoTS5vbk9wZW49aS5vbk9wZW4pLHAoaS5vbkNsb3NlKSYmKE0ub25DbG9zZT1pLm9uQ2xvc2UpLE0uY2xvc2VCdXR0b249Yi5jbG9zZUJ1dHRvbiwhMT09PWkuY2xvc2VCdXR0b258fGYoaS5jbG9zZUJ1dHRvbik/TS5jbG9zZUJ1dHRvbj1pLmNsb3NlQnV0dG9uOiEwPT09aS5jbG9zZUJ1dHRvbiYmKE0uY2xvc2VCdXR0b249IWYoYi5jbG9zZUJ1dHRvbil8fGIuY2xvc2VCdXR0b24pO2xldCB4PXQ7ZSh0KSYmIWQodC50eXBlKT94PWEodCx7Y2xvc2VUb2FzdDpMLHRvYXN0UHJvcHM6TSxkYXRhOlR9KTpwKHQpJiYoeD10KHtjbG9zZVRvYXN0OkwsdG9hc3RQcm9wczpNLGRhdGE6VH0pKSxiLmxpbWl0JiZiLmxpbWl0PjAmJkMuY291bnQ+Yi5saW1pdCYmTj9DLnF1ZXVlLnB1c2goe3RvYXN0Q29udGVudDp4LHRvYXN0UHJvcHM6TSxzdGFsZUlkOnJ9KTp1KHMpP3NldFRpbWVvdXQoKCk9PntPKHgsTSxyKX0scyk6Tyh4LE0scil9ZnVuY3Rpb24gTyh0LGUsbil7Y29uc3R7dG9hc3RJZDpvfT1lO24mJmguZGVsZXRlKG4pO2NvbnN0IHM9e2NvbnRlbnQ6dCxwcm9wczplfTtoLnNldChvLHMpLGModD0+Wy4uLnQsb10uZmlsdGVyKHQ9PnQhPT1uKSksdi5lbWl0KDQseShzLG51bGw9PXMucHJvcHMudXBkYXRlSWQ/XCJhZGRlZFwiOlwidXBkYXRlZFwiKSl9cmV0dXJuIHMoKCk9PihDLmNvbnRhaW5lcklkPXQuY29udGFpbmVySWQsdi5jYW5jZWxFbWl0KDMpLm9uKDAsTCkub24oMSx0PT5nLmN1cnJlbnQmJkkodCkpLm9uKDUsYikuZW1pdCgyLEMpLCgpPT57aC5jbGVhcigpLHYuZW1pdCgzLEMpfSksW10pLHMoKCk9PntDLnByb3BzPXQsQy5pc1RvYXN0QWN0aXZlPVQsQy5kaXNwbGF5ZWRUb2FzdD1sLmxlbmd0aH0pLHtnZXRUb2FzdFRvUmVuZGVyOmZ1bmN0aW9uKGUpe2NvbnN0IG49bmV3IE1hcCxvPUFycmF5LmZyb20oaC52YWx1ZXMoKSk7cmV0dXJuIHQubmV3ZXN0T25Ub3AmJm8ucmV2ZXJzZSgpLG8uZm9yRWFjaCh0PT57Y29uc3R7cG9zaXRpb246ZX09dC5wcm9wcztuLmhhcyhlKXx8bi5zZXQoZSxbXSksbi5nZXQoZSkucHVzaCh0KX0pLEFycmF5LmZyb20obix0PT5lKHRbMF0sdFsxXSkpfSxjb250YWluZXJSZWY6Zyxpc1RvYXN0QWN0aXZlOlR9fWZ1bmN0aW9uIGIodCl7cmV0dXJuIHQudGFyZ2V0VG91Y2hlcyYmdC50YXJnZXRUb3VjaGVzLmxlbmd0aD49MT90LnRhcmdldFRvdWNoZXNbMF0uY2xpZW50WDp0LmNsaWVudFh9ZnVuY3Rpb24gSSh0KXtyZXR1cm4gdC50YXJnZXRUb3VjaGVzJiZ0LnRhcmdldFRvdWNoZXMubGVuZ3RoPj0xP3QudGFyZ2V0VG91Y2hlc1swXS5jbGllbnRZOnQuY2xpZW50WX1mdW5jdGlvbiBfKHQpe2NvbnN0W28sYV09aSghMSksW3IsbF09aSghMSksYz1uKG51bGwpLHU9bih7c3RhcnQ6MCx4OjAseTowLGRlbHRhOjAscmVtb3ZhbERpc3RhbmNlOjAsY2FuQ2xvc2VPbkNsaWNrOiEwLGNhbkRyYWc6ITEsYm91bmRpbmdSZWN0Om51bGwsZGlkTW92ZTohMX0pLmN1cnJlbnQsZD1uKHQpLHthdXRvQ2xvc2U6bSxwYXVzZU9uSG92ZXI6ZixjbG9zZVRvYXN0Omcsb25DbGljazpoLGNsb3NlT25DbGljazp5fT10O2Z1bmN0aW9uIHYoZSl7aWYodC5kcmFnZ2FibGUpe1widG91Y2hzdGFydFwiPT09ZS5uYXRpdmVFdmVudC50eXBlJiZlLm5hdGl2ZUV2ZW50LnByZXZlbnREZWZhdWx0KCksdS5kaWRNb3ZlPSExLGRvY3VtZW50LmFkZEV2ZW50TGlzdGVuZXIoXCJtb3VzZW1vdmVcIixfKSxkb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKFwibW91c2V1cFwiLEwpLGRvY3VtZW50LmFkZEV2ZW50TGlzdGVuZXIoXCJ0b3VjaG1vdmVcIixfKSxkb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKFwidG91Y2hlbmRcIixMKTtjb25zdCBuPWMuY3VycmVudDt1LmNhbkNsb3NlT25DbGljaz0hMCx1LmNhbkRyYWc9ITAsdS5ib3VuZGluZ1JlY3Q9bi5nZXRCb3VuZGluZ0NsaWVudFJlY3QoKSxuLnN0eWxlLnRyYW5zaXRpb249XCJcIix1Lng9YihlLm5hdGl2ZUV2ZW50KSx1Lnk9SShlLm5hdGl2ZUV2ZW50KSxcInhcIj09PXQuZHJhZ2dhYmxlRGlyZWN0aW9uPyh1LnN0YXJ0PXUueCx1LnJlbW92YWxEaXN0YW5jZT1uLm9mZnNldFdpZHRoKih0LmRyYWdnYWJsZVBlcmNlbnQvMTAwKSk6KHUuc3RhcnQ9dS55LHUucmVtb3ZhbERpc3RhbmNlPW4ub2Zmc2V0SGVpZ2h0Kig4MD09PXQuZHJhZ2dhYmxlUGVyY2VudD8xLjUqdC5kcmFnZ2FibGVQZXJjZW50OnQuZHJhZ2dhYmxlUGVyY2VudC8xMDApKX19ZnVuY3Rpb24gVChlKXtpZih1LmJvdW5kaW5nUmVjdCl7Y29uc3R7dG9wOm4sYm90dG9tOm8sbGVmdDpzLHJpZ2h0OmF9PXUuYm91bmRpbmdSZWN0O1widG91Y2hlbmRcIiE9PWUubmF0aXZlRXZlbnQudHlwZSYmdC5wYXVzZU9uSG92ZXImJnUueD49cyYmdS54PD1hJiZ1Lnk+PW4mJnUueTw9bz9DKCk6RSgpfX1mdW5jdGlvbiBFKCl7YSghMCl9ZnVuY3Rpb24gQygpe2EoITEpfWZ1bmN0aW9uIF8oZSl7Y29uc3Qgbj1jLmN1cnJlbnQ7dS5jYW5EcmFnJiZuJiYodS5kaWRNb3ZlPSEwLG8mJkMoKSx1Lng9YihlKSx1Lnk9SShlKSx1LmRlbHRhPVwieFwiPT09dC5kcmFnZ2FibGVEaXJlY3Rpb24/dS54LXUuc3RhcnQ6dS55LXUuc3RhcnQsdS5zdGFydCE9PXUueCYmKHUuY2FuQ2xvc2VPbkNsaWNrPSExKSxuLnN0eWxlLnRyYW5zZm9ybT1gdHJhbnNsYXRlJHt0LmRyYWdnYWJsZURpcmVjdGlvbn0oJHt1LmRlbHRhfXB4KWAsbi5zdHlsZS5vcGFjaXR5PVwiXCIrKDEtTWF0aC5hYnModS5kZWx0YS91LnJlbW92YWxEaXN0YW5jZSkpKX1mdW5jdGlvbiBMKCl7ZG9jdW1lbnQucmVtb3ZlRXZlbnRMaXN0ZW5lcihcIm1vdXNlbW92ZVwiLF8pLGRvY3VtZW50LnJlbW92ZUV2ZW50TGlzdGVuZXIoXCJtb3VzZXVwXCIsTCksZG9jdW1lbnQucmVtb3ZlRXZlbnRMaXN0ZW5lcihcInRvdWNobW92ZVwiLF8pLGRvY3VtZW50LnJlbW92ZUV2ZW50TGlzdGVuZXIoXCJ0b3VjaGVuZFwiLEwpO2NvbnN0IGU9Yy5jdXJyZW50O2lmKHUuY2FuRHJhZyYmdS5kaWRNb3ZlJiZlKXtpZih1LmNhbkRyYWc9ITEsTWF0aC5hYnModS5kZWx0YSk+dS5yZW1vdmFsRGlzdGFuY2UpcmV0dXJuIGwoITApLHZvaWQgdC5jbG9zZVRvYXN0KCk7ZS5zdHlsZS50cmFuc2l0aW9uPVwidHJhbnNmb3JtIDAuMnMsIG9wYWNpdHkgMC4yc1wiLGUuc3R5bGUudHJhbnNmb3JtPWB0cmFuc2xhdGUke3QuZHJhZ2dhYmxlRGlyZWN0aW9ufSgwKWAsZS5zdHlsZS5vcGFjaXR5PVwiMVwifX1zKCgpPT57ZC5jdXJyZW50PXR9KSxzKCgpPT4oYy5jdXJyZW50JiZjLmN1cnJlbnQuYWRkRXZlbnRMaXN0ZW5lcihcImRcIixFLHtvbmNlOiEwfSkscCh0Lm9uT3BlbikmJnQub25PcGVuKGUodC5jaGlsZHJlbikmJnQuY2hpbGRyZW4ucHJvcHMpLCgpPT57Y29uc3QgdD1kLmN1cnJlbnQ7cCh0Lm9uQ2xvc2UpJiZ0Lm9uQ2xvc2UoZSh0LmNoaWxkcmVuKSYmdC5jaGlsZHJlbi5wcm9wcyl9KSxbXSkscygoKT0+KHQucGF1c2VPbkZvY3VzTG9zcyYmKGRvY3VtZW50Lmhhc0ZvY3VzKCl8fEMoKSx3aW5kb3cuYWRkRXZlbnRMaXN0ZW5lcihcImZvY3VzXCIsRSksd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJibHVyXCIsQykpLCgpPT57dC5wYXVzZU9uRm9jdXNMb3NzJiYod2luZG93LnJlbW92ZUV2ZW50TGlzdGVuZXIoXCJmb2N1c1wiLEUpLHdpbmRvdy5yZW1vdmVFdmVudExpc3RlbmVyKFwiYmx1clwiLEMpKX0pLFt0LnBhdXNlT25Gb2N1c0xvc3NdKTtjb25zdCBPPXtvbk1vdXNlRG93bjp2LG9uVG91Y2hTdGFydDp2LG9uTW91c2VVcDpULG9uVG91Y2hFbmQ6VH07cmV0dXJuIG0mJmYmJihPLm9uTW91c2VFbnRlcj1DLE8ub25Nb3VzZUxlYXZlPUUpLHkmJihPLm9uQ2xpY2s9dD0+e2gmJmgodCksdS5jYW5DbG9zZU9uQ2xpY2smJmcoKX0pLHtwbGF5VG9hc3Q6RSxwYXVzZVRvYXN0OkMsaXNSdW5uaW5nOm8scHJldmVudEV4aXRUcmFuc2l0aW9uOnIsdG9hc3RSZWY6YyxldmVudEhhbmRsZXJzOk99fWZ1bmN0aW9uIEwoZSl7bGV0e2Nsb3NlVG9hc3Q6bix0aGVtZTpvLGFyaWFMYWJlbDpzPVwiY2xvc2VcIn09ZTtyZXR1cm4gdC5jcmVhdGVFbGVtZW50KFwiYnV0dG9uXCIse2NsYXNzTmFtZTpgVG9hc3RpZnlfX2Nsb3NlLWJ1dHRvbiBUb2FzdGlmeV9fY2xvc2UtYnV0dG9uLS0ke299YCx0eXBlOlwiYnV0dG9uXCIsb25DbGljazp0PT57dC5zdG9wUHJvcGFnYXRpb24oKSxuKHQpfSxcImFyaWEtbGFiZWxcIjpzfSx0LmNyZWF0ZUVsZW1lbnQoXCJzdmdcIix7XCJhcmlhLWhpZGRlblwiOlwidHJ1ZVwiLHZpZXdCb3g6XCIwIDAgMTQgMTZcIn0sdC5jcmVhdGVFbGVtZW50KFwicGF0aFwiLHtmaWxsUnVsZTpcImV2ZW5vZGRcIixkOlwiTTcuNzEgOC4yM2wzLjc1IDMuNzUtMS40OCAxLjQ4LTMuNzUtMy43NS0zLjc1IDMuNzVMMSAxMS45OGwzLjc1LTMuNzVMMSA0LjQ4IDIuNDggM2wzLjc1IDMuNzVMOS45OCAzbDEuNDggMS40OC0zLjc1IDMuNzV6XCJ9KSkpfWZ1bmN0aW9uIE8oZSl7bGV0e2RlbGF5Om4saXNSdW5uaW5nOm8sY2xvc2VUb2FzdDpzLHR5cGU6YT1cImRlZmF1bHRcIixoaWRlOnIsY2xhc3NOYW1lOmksc3R5bGU6bCxjb250cm9sbGVkUHJvZ3Jlc3M6dSxwcm9ncmVzczpkLHJ0bDptLGlzSW46Zix0aGVtZTpnfT1lO2NvbnN0IGg9cnx8dSYmMD09PWQseT17Li4ubCxhbmltYXRpb25EdXJhdGlvbjpgJHtufW1zYCxhbmltYXRpb25QbGF5U3RhdGU6bz9cInJ1bm5pbmdcIjpcInBhdXNlZFwiLG9wYWNpdHk6aD8wOjF9O3UmJih5LnRyYW5zZm9ybT1gc2NhbGVYKCR7ZH0pYCk7Y29uc3Qgdj1jKFwiVG9hc3RpZnlfX3Byb2dyZXNzLWJhclwiLHU/XCJUb2FzdGlmeV9fcHJvZ3Jlc3MtYmFyLS1jb250cm9sbGVkXCI6XCJUb2FzdGlmeV9fcHJvZ3Jlc3MtYmFyLS1hbmltYXRlZFwiLGBUb2FzdGlmeV9fcHJvZ3Jlc3MtYmFyLXRoZW1lLS0ke2d9YCxgVG9hc3RpZnlfX3Byb2dyZXNzLWJhci0tJHthfWAse1wiVG9hc3RpZnlfX3Byb2dyZXNzLWJhci0tcnRsXCI6bX0pLFQ9cChpKT9pKHtydGw6bSx0eXBlOmEsZGVmYXVsdENsYXNzTmFtZTp2fSk6Yyh2LGkpO3JldHVybiB0LmNyZWF0ZUVsZW1lbnQoXCJkaXZcIix7cm9sZTpcInByb2dyZXNzYmFyXCIsXCJhcmlhLWhpZGRlblwiOmg/XCJ0cnVlXCI6XCJmYWxzZVwiLFwiYXJpYS1sYWJlbFwiOlwibm90aWZpY2F0aW9uIHRpbWVyXCIsY2xhc3NOYW1lOlQsc3R5bGU6eSxbdSYmZD49MT9cIm9uVHJhbnNpdGlvbkVuZFwiOlwib25BbmltYXRpb25FbmRcIl06dSYmZDwxP251bGw6KCk9PntmJiZzKCl9fSl9Y29uc3QgTj1uPT57Y29uc3R7aXNSdW5uaW5nOm8scHJldmVudEV4aXRUcmFuc2l0aW9uOnMsdG9hc3RSZWY6cixldmVudEhhbmRsZXJzOml9PV8obikse2Nsb3NlQnV0dG9uOmwsY2hpbGRyZW46dSxhdXRvQ2xvc2U6ZCxvbkNsaWNrOm0sdHlwZTpmLGhpZGVQcm9ncmVzc0JhcjpnLGNsb3NlVG9hc3Q6aCx0cmFuc2l0aW9uOnkscG9zaXRpb246dixjbGFzc05hbWU6VCxzdHlsZTpFLGJvZHlDbGFzc05hbWU6Qyxib2R5U3R5bGU6Yixwcm9ncmVzc0NsYXNzTmFtZTpJLHByb2dyZXNzU3R5bGU6Tix1cGRhdGVJZDpNLHJvbGU6Uixwcm9ncmVzczp3LHJ0bDp4LHRvYXN0SWQ6JCxkZWxldGVUb2FzdDprLGlzSW46UCxpc0xvYWRpbmc6QixpY29uT3V0OkQsY2xvc2VPbkNsaWNrOkEsdGhlbWU6en09bixGPWMoXCJUb2FzdGlmeV9fdG9hc3RcIixgVG9hc3RpZnlfX3RvYXN0LXRoZW1lLS0ke3p9YCxgVG9hc3RpZnlfX3RvYXN0LS0ke2Z9YCx7XCJUb2FzdGlmeV9fdG9hc3QtLXJ0bFwiOnh9LHtcIlRvYXN0aWZ5X190b2FzdC0tY2xvc2Utb24tY2xpY2tcIjpBfSksSD1wKFQpP1Qoe3J0bDp4LHBvc2l0aW9uOnYsdHlwZTpmLGRlZmF1bHRDbGFzc05hbWU6Rn0pOmMoRixUKSxTPSEhd3x8IWQscT17Y2xvc2VUb2FzdDpoLHR5cGU6Zix0aGVtZTp6fTtsZXQgUT1udWxsO3JldHVybiExPT09bHx8KFE9cChsKT9sKHEpOmUobCk/YShsLHEpOkwocSkpLHQuY3JlYXRlRWxlbWVudCh5LHtpc0luOlAsZG9uZTprLHBvc2l0aW9uOnYscHJldmVudEV4aXRUcmFuc2l0aW9uOnMsbm9kZVJlZjpyfSx0LmNyZWF0ZUVsZW1lbnQoXCJkaXZcIix7aWQ6JCxvbkNsaWNrOm0sY2xhc3NOYW1lOkgsLi4uaSxzdHlsZTpFLHJlZjpyfSx0LmNyZWF0ZUVsZW1lbnQoXCJkaXZcIix7Li4uUCYme3JvbGU6Un0sY2xhc3NOYW1lOnAoQyk/Qyh7dHlwZTpmfSk6YyhcIlRvYXN0aWZ5X190b2FzdC1ib2R5XCIsQyksc3R5bGU6Yn0sbnVsbCE9RCYmdC5jcmVhdGVFbGVtZW50KFwiZGl2XCIse2NsYXNzTmFtZTpjKFwiVG9hc3RpZnlfX3RvYXN0LWljb25cIix7XCJUb2FzdGlmeS0tYW5pbWF0ZS1pY29uIFRvYXN0aWZ5X196b29tLWVudGVyXCI6IUJ9KX0sRCksdC5jcmVhdGVFbGVtZW50KFwiZGl2XCIsbnVsbCx1KSksUSx0LmNyZWF0ZUVsZW1lbnQoTyx7Li4uTSYmIVM/e2tleTpgcGItJHtNfWB9Ont9LHJ0bDp4LHRoZW1lOnosZGVsYXk6ZCxpc1J1bm5pbmc6byxpc0luOlAsY2xvc2VUb2FzdDpoLGhpZGU6Zyx0eXBlOmYsc3R5bGU6TixjbGFzc05hbWU6SSxjb250cm9sbGVkUHJvZ3Jlc3M6Uyxwcm9ncmVzczp3fHwwfSkpKX0sTT1mdW5jdGlvbih0LGUpe3JldHVybiB2b2lkIDA9PT1lJiYoZT0hMSkse2VudGVyOmBUb2FzdGlmeS0tYW5pbWF0ZSBUb2FzdGlmeV9fJHt0fS1lbnRlcmAsZXhpdDpgVG9hc3RpZnktLWFuaW1hdGUgVG9hc3RpZnlfXyR7dH0tZXhpdGAsYXBwZW5kUG9zaXRpb246ZX19LFI9aChNKFwiYm91bmNlXCIsITApKSx3PWgoTShcInNsaWRlXCIsITApKSx4PWgoTShcInpvb21cIikpLCQ9aChNKFwiZmxpcFwiKSksaz1sKChlLG4pPT57Y29uc3R7Z2V0VG9hc3RUb1JlbmRlcjpvLGNvbnRhaW5lclJlZjphLGlzVG9hc3RBY3RpdmU6cn09QyhlKSx7Y2xhc3NOYW1lOmksc3R5bGU6bCxydGw6dSxjb250YWluZXJJZDpkfT1lO2Z1bmN0aW9uIGYodCl7Y29uc3QgZT1jKFwiVG9hc3RpZnlfX3RvYXN0LWNvbnRhaW5lclwiLGBUb2FzdGlmeV9fdG9hc3QtY29udGFpbmVyLS0ke3R9YCx7XCJUb2FzdGlmeV9fdG9hc3QtY29udGFpbmVyLS1ydGxcIjp1fSk7cmV0dXJuIHAoaSk/aSh7cG9zaXRpb246dCxydGw6dSxkZWZhdWx0Q2xhc3NOYW1lOmV9KTpjKGUsbShpKSl9cmV0dXJuIHMoKCk9PntuJiYobi5jdXJyZW50PWEuY3VycmVudCl9LFtdKSx0LmNyZWF0ZUVsZW1lbnQoXCJkaXZcIix7cmVmOmEsY2xhc3NOYW1lOlwiVG9hc3RpZnlcIixpZDpkfSxvKChlLG4pPT57Y29uc3Qgbz1uLmxlbmd0aD97Li4ubH06ey4uLmwscG9pbnRlckV2ZW50czpcIm5vbmVcIn07cmV0dXJuIHQuY3JlYXRlRWxlbWVudChcImRpdlwiLHtjbGFzc05hbWU6ZihlKSxzdHlsZTpvLGtleTpgY29udGFpbmVyLSR7ZX1gfSxuLm1hcCgoZSxvKT0+e2xldHtjb250ZW50OnMscHJvcHM6YX09ZTtyZXR1cm4gdC5jcmVhdGVFbGVtZW50KE4sey4uLmEsaXNJbjpyKGEudG9hc3RJZCksc3R5bGU6ey4uLmEuc3R5bGUsXCItLW50aFwiOm8rMSxcIi0tbGVuXCI6bi5sZW5ndGh9LGtleTpgdG9hc3QtJHthLmtleX1gfSxzKX0pKX0pKX0pO2suZGlzcGxheU5hbWU9XCJUb2FzdENvbnRhaW5lclwiLGsuZGVmYXVsdFByb3BzPXtwb3NpdGlvbjpcInRvcC1yaWdodFwiLHRyYW5zaXRpb246UixhdXRvQ2xvc2U6NWUzLGNsb3NlQnV0dG9uOkwscGF1c2VPbkhvdmVyOiEwLHBhdXNlT25Gb2N1c0xvc3M6ITAsY2xvc2VPbkNsaWNrOiEwLGRyYWdnYWJsZTohMCxkcmFnZ2FibGVQZXJjZW50OjgwLGRyYWdnYWJsZURpcmVjdGlvbjpcInhcIixyb2xlOlwiYWxlcnRcIix0aGVtZTpcImxpZ2h0XCJ9O2xldCBQLEI9bmV3IE1hcCxEPVtdLEE9MTtmdW5jdGlvbiB6KCl7cmV0dXJuXCJcIitBKyt9ZnVuY3Rpb24gRih0KXtyZXR1cm4gdCYmKGQodC50b2FzdElkKXx8dSh0LnRvYXN0SWQpKT90LnRvYXN0SWQ6eigpfWZ1bmN0aW9uIEgodCxlKXtyZXR1cm4gQi5zaXplPjA/di5lbWl0KDAsdCxlKTpELnB1c2goe2NvbnRlbnQ6dCxvcHRpb25zOmV9KSxlLnRvYXN0SWR9ZnVuY3Rpb24gUyh0LGUpe3JldHVybnsuLi5lLHR5cGU6ZSYmZS50eXBlfHx0LHRvYXN0SWQ6RihlKX19ZnVuY3Rpb24gcSh0KXtyZXR1cm4oZSxuKT0+SChlLFModCxuKSl9ZnVuY3Rpb24gUSh0LGUpe3JldHVybiBIKHQsUyhcImRlZmF1bHRcIixlKSl9US5sb2FkaW5nPSh0LGUpPT5IKHQsUyhcImRlZmF1bHRcIix7aXNMb2FkaW5nOiEwLGF1dG9DbG9zZTohMSxjbG9zZU9uQ2xpY2s6ITEsY2xvc2VCdXR0b246ITEsZHJhZ2dhYmxlOiExLC4uLmV9KSksUS5wcm9taXNlPWZ1bmN0aW9uKHQsZSxuKXtsZXQgbyx7cGVuZGluZzpzLGVycm9yOmEsc3VjY2VzczpyfT1lO3MmJihvPWQocyk/US5sb2FkaW5nKHMsbik6US5sb2FkaW5nKHMucmVuZGVyLHsuLi5uLC4uLnN9KSk7Y29uc3QgaT17aXNMb2FkaW5nOm51bGwsYXV0b0Nsb3NlOm51bGwsY2xvc2VPbkNsaWNrOm51bGwsY2xvc2VCdXR0b246bnVsbCxkcmFnZ2FibGU6bnVsbH0sbD0odCxlLHMpPT57aWYobnVsbD09ZSlyZXR1cm4gdm9pZCBRLmRpc21pc3Mobyk7Y29uc3QgYT17dHlwZTp0LC4uLmksLi4ubixkYXRhOnN9LHI9ZChlKT97cmVuZGVyOmV9OmU7cmV0dXJuIG8/US51cGRhdGUobyx7Li4uYSwuLi5yfSk6UShyLnJlbmRlcix7Li4uYSwuLi5yfSksc30sYz1wKHQpP3QoKTp0O3JldHVybiBjLnRoZW4odD0+bChcInN1Y2Nlc3NcIixyLHQpKS5jYXRjaCh0PT5sKFwiZXJyb3JcIixhLHQpKSxjfSxRLnN1Y2Nlc3M9cShcInN1Y2Nlc3NcIiksUS5pbmZvPXEoXCJpbmZvXCIpLFEuZXJyb3I9cShcImVycm9yXCIpLFEud2FybmluZz1xKFwid2FybmluZ1wiKSxRLndhcm49US53YXJuaW5nLFEuZGFyaz0odCxlKT0+SCh0LFMoXCJkZWZhdWx0XCIse3RoZW1lOlwiZGFya1wiLC4uLmV9KSksUS5kaXNtaXNzPXQ9PntCLnNpemU+MD92LmVtaXQoMSx0KTpEPUQuZmlsdGVyKGU9Pm51bGwhPXQmJmUub3B0aW9ucy50b2FzdElkIT09dCl9LFEuY2xlYXJXYWl0aW5nUXVldWU9ZnVuY3Rpb24odCl7cmV0dXJuIHZvaWQgMD09PXQmJih0PXt9KSx2LmVtaXQoNSx0KX0sUS5pc0FjdGl2ZT10PT57bGV0IGU9ITE7cmV0dXJuIEIuZm9yRWFjaChuPT57bi5pc1RvYXN0QWN0aXZlJiZuLmlzVG9hc3RBY3RpdmUodCkmJihlPSEwKX0pLGV9LFEudXBkYXRlPWZ1bmN0aW9uKHQsZSl7dm9pZCAwPT09ZSYmKGU9e30pLHNldFRpbWVvdXQoKCk9Pntjb25zdCBuPWZ1bmN0aW9uKHQsZSl7bGV0e2NvbnRhaW5lcklkOm59PWU7Y29uc3Qgbz1CLmdldChufHxQKTtyZXR1cm4gbyYmby5nZXRUb2FzdCh0KX0odCxlKTtpZihuKXtjb25zdHtwcm9wczpvLGNvbnRlbnQ6c309bixhPXtkZWxheToxMDAsLi4ubywuLi5lLHRvYXN0SWQ6ZS50b2FzdElkfHx0LHVwZGF0ZUlkOnooKX07YS50b2FzdElkIT09dCYmKGEuc3RhbGVJZD10KTtjb25zdCByPWEucmVuZGVyfHxzO2RlbGV0ZSBhLnJlbmRlcixIKHIsYSl9fSwwKX0sUS5kb25lPXQ9PntRLnVwZGF0ZSh0LHtwcm9ncmVzczoxfSl9LFEub25DaGFuZ2U9dD0+KHYub24oNCx0KSwoKT0+e3Yub2ZmKDQsdCl9KSxRLlBPU0lUSU9OPXtUT1BfTEVGVDpcInRvcC1sZWZ0XCIsVE9QX1JJR0hUOlwidG9wLXJpZ2h0XCIsVE9QX0NFTlRFUjpcInRvcC1jZW50ZXJcIixCT1RUT01fTEVGVDpcImJvdHRvbS1sZWZ0XCIsQk9UVE9NX1JJR0hUOlwiYm90dG9tLXJpZ2h0XCIsQk9UVE9NX0NFTlRFUjpcImJvdHRvbS1jZW50ZXJcIn0sUS5UWVBFPXtJTkZPOlwiaW5mb1wiLFNVQ0NFU1M6XCJzdWNjZXNzXCIsV0FSTklORzpcIndhcm5pbmdcIixFUlJPUjpcImVycm9yXCIsREVGQVVMVDpcImRlZmF1bHRcIn0sdi5vbigyLHQ9PntQPXQuY29udGFpbmVySWR8fHQsQi5zZXQoUCx0KSxELmZvckVhY2godD0+e3YuZW1pdCgwLHQuY29udGVudCx0Lm9wdGlvbnMpfSksRD1bXX0pLm9uKDMsdD0+e0IuZGVsZXRlKHQuY29udGFpbmVySWR8fHQpLDA9PT1CLnNpemUmJnYub2ZmKDApLm9mZigxKS5vZmYoNSl9KTtleHBvcnR7UiBhcyBCb3VuY2UsJCBhcyBGbGlwLEUgYXMgSWNvbnMsdyBhcyBTbGlkZSxrIGFzIFRvYXN0Q29udGFpbmVyLHggYXMgWm9vbSxnIGFzIGNvbGxhcHNlVG9hc3QsaCBhcyBjc3NUcmFuc2l0aW9uLFEgYXMgdG9hc3QsXyBhcyB1c2VUb2FzdCxDIGFzIHVzZVRvYXN0Q29udGFpbmVyfTtcbi8vIyBzb3VyY2VNYXBwaW5nVVJMPXJlYWN0LXRvYXN0aWZ5LmVzbS5tanMubWFwXG4iLCJpbXBvcnQgeyBjcmVhdGVFbGVtZW50LCB1c2VFZmZlY3QgfSBmcm9tIFwicmVhY3RcIjtcblxuaW1wb3J0IHsgVG9hc3RDb250YWluZXIsIHRvYXN0IH0gZnJvbSAncmVhY3QtdG9hc3RpZnknO1xuaW1wb3J0IHsgU2xpZGUsIFpvb20sIEZsaXAsIEJvdW5jZSB9IGZyb20gJ3JlYWN0LXRvYXN0aWZ5JztcblxuaW1wb3J0IFwicmVhY3QtdG9hc3RpZnkvZGlzdC9SZWFjdFRvYXN0aWZ5LmNzc1wiO1xuaW1wb3J0IFwiLi91aS9GZWVkYmFja05vdGlmaWNhdGlvbi5jc3NcIjtcblxuXG5leHBvcnQgZGVmYXVsdCBmdW5jdGlvbiBGZWVkYmFja05vdGlmaWNhdGlvbihwcm9wcykge1xuXG4gICAgdXNlRWZmZWN0KCgpID0+IHtcbiAgICAgICAgLy8gSWYgbmV3IGl0ZW1zIHJldHJpZXZlZCwgY3JlYXRlIHRvYXN0IG1lc3NhZ2VzXG4gICAgICAgIGlmIChwcm9wcy5kYXRhc291cmNlTm90aWZpY2F0aW9ucy5pdGVtcykge1xuICAgICAgICAgICAgZm9yIChsZXQgaXRlbUluZGV4IGluIHByb3BzLmRhdGFzb3VyY2VOb3RpZmljYXRpb25zLml0ZW1zKSB7XG4gICAgICAgICAgICAgICAgY29uc3Qgbm90aWZpY2F0aW9uID0gcHJvcHMuZGF0YXNvdXJjZU5vdGlmaWNhdGlvbnMuaXRlbXNbaXRlbUluZGV4XTtcbiAgICAgICAgICAgICAgICB0b2FzdChnZXROb3RpZmljYXRpb25UZXh0KG5vdGlmaWNhdGlvbiksIHtcbiAgICAgICAgICAgICAgICAgICAgdHlwZTogZ2V0Tm90aWZpY2F0aW9uVHlwZShub3RpZmljYXRpb24pLFxuICAgICAgICAgICAgICAgICAgICBhdXRvQ2xvc2U6IGdldE5vdGlmaWNhdGlvbkF1dG9DbG9zZShub3RpZmljYXRpb24pLFxuICAgICAgICAgICAgICAgICAgICBjbGFzc05hbWU6IGdldE5vdGlmaWNhdGlvbkNsYXNzTmFtZShub3RpZmljYXRpb24pLFxuICAgICAgICAgICAgICAgICAgICBvbkNsb3NlOiAoKSA9PiBleGVjdXRlQ2xvc2VBY3Rpb24obm90aWZpY2F0aW9uKSxcbiAgICAgICAgICAgICAgICAgICAgdGhlbWU6IGdldE5vdGlmaWNhdGlvblRoZW1lKG5vdGlmaWNhdGlvbiksXG4gICAgICAgICAgICAgICAgICAgIGljb246IGdldE5vdGlmaWNhdGlvblNob3dJY29uKG5vdGlmaWNhdGlvbilcbiAgICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICAgICAgICBleGVjdXRlU2hvd0FjdGlvbihub3RpZmljYXRpb24pO1xuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfSwgW3Byb3BzLmRhdGFzb3VyY2VOb3RpZmljYXRpb25zLml0ZW1zXSlcblxuICAgIGNvbnN0IGV4ZWN1dGVTaG93QWN0aW9uID0gKG5vdGlmaWNhdGlvbikgPT4ge1xuICAgICAgICAvL0V4ZWN1dGUgdGhlIG9uIHNob3cgYWN0aW9uIGlmIG5lZWRlZFxuICAgICAgICBpZiAocHJvcHMub25TaG93QWN0aW9uICYmIHByb3BzLm9uU2hvd0FjdGlvbi5nZXQobm90aWZpY2F0aW9uKS5jYW5FeGVjdXRlKSB7XG4gICAgICAgICAgICBwcm9wcy5vblNob3dBY3Rpb24uZ2V0KG5vdGlmaWNhdGlvbikuZXhlY3V0ZSgpO1xuICAgICAgICB9XG4gICAgfVxuXG4gICAgY29uc3QgZXhlY3V0ZUNsb3NlQWN0aW9uID0gKG5vdGlmaWNhdGlvbikgPT4ge1xuICAgICAgICAvL0V4ZWN1dGUgdGhlIG9uIGNsb3NlIGFjdGlvbiBpZiBuZWVkZWRcbiAgICAgICAgaWYgKHByb3BzLm9uQ2xvc2VBY3Rpb24gJiYgcHJvcHMub25DbG9zZUFjdGlvbi5nZXQobm90aWZpY2F0aW9uKS5jYW5FeGVjdXRlKSB7XG4gICAgICAgICAgICBwcm9wcy5vbkNsb3NlQWN0aW9uLmdldChub3RpZmljYXRpb24pLmV4ZWN1dGUoKTtcbiAgICAgICAgfVxuICAgIH1cblxuICAgIGNvbnN0IGdldE5vdGlmaWNhdGlvblRleHQgPSAobm90aWZpY2F0aW9uKSA9PiB7XG4gICAgICAgIHJldHVybiBwcm9wcy5ub3RpZmljYXRpb25UZXh0LmdldChub3RpZmljYXRpb24pLnZhbHVlO1xuICAgIH1cblxuICAgIGNvbnN0IGdldE5vdGlmaWNhdGlvblNob3dJY29uID0gKG5vdGlmaWNhdGlvbikgPT4ge1xuICAgICAgICBsZXQgc2hvd0ljb24gPSBwcm9wcy5zaG93SWNvbi5nZXQobm90aWZpY2F0aW9uKS52YWx1ZTtcbiAgICAgICAgcmV0dXJuIHNob3dJY29uID8gdW5kZWZpbmVkIDogZmFsc2U7XG4gICAgfVxuXG4gICAgY29uc3QgZ2V0Tm90aWZpY2F0aW9uQ2xhc3NOYW1lID0gKG5vdGlmaWNhdGlvbikgPT4ge1xuICAgICAgICBpZiAocHJvcHMuY2xhc3NOYW1lKSB7XG4gICAgICAgICAgICByZXR1cm4gcHJvcHMuY2xhc3NOYW1lLmdldChub3RpZmljYXRpb24pLnZhbHVlO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiAnJztcbiAgICB9XG5cbiAgICBjb25zdCBnZXROb3RpZmljYXRpb25UeXBlID0gKG5vdGlmaWNhdGlvbikgPT4ge1xuICAgICAgICBpZiAocHJvcHMubm90aWZpY2F0aW9uVHlwZSkge1xuICAgICAgICAgICAgbGV0IG5vdGlmaWNhdGlvblR5cGUgPSBwcm9wcy5ub3RpZmljYXRpb25UeXBlLmdldChub3RpZmljYXRpb24pLnZhbHVlLnRvTG93ZXJDYXNlKCk7XG4gICAgICAgICAgICBpZiAobm90aWZpY2F0aW9uVHlwZSAhPT0gJ2luZm8nICYmIG5vdGlmaWNhdGlvblR5cGUgIT09ICdkZWZhdWx0JyAmJiBub3RpZmljYXRpb25UeXBlICE9PSAnc3VjY2VzcycgJiYgbm90aWZpY2F0aW9uVHlwZSAhPT0gJ3dhcm5pbmcnICYmIG5vdGlmaWNhdGlvblR5cGUgIT09ICdlcnJvcicpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gJ2luZm8nXG4gICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIHJldHVybiBub3RpZmljYXRpb25UeXBlXG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuICdpbmZvJztcbiAgICB9XG5cbiAgICBjb25zdCBnZXROb3RpZmljYXRpb25UaGVtZSA9IChub3RpZmljYXRpb24pID0+IHtcbiAgICAgICAgaWYgKHByb3BzLm5vdGlmaWNhdGlvblRoZW1lKSB7XG4gICAgICAgICAgICBsZXQgdGhlbWUgPSBwcm9wcy5ub3RpZmljYXRpb25UaGVtZS5nZXQobm90aWZpY2F0aW9uKS52YWx1ZS50b0xvd2VyQ2FzZSgpO1xuICAgICAgICAgICAgaWYgKHRoZW1lID09PSAnbGlnaHQnIHx8IHRoZW1lID09PSAnZGFyaycgfHwgdGhlbWUgPT09ICdjb2xvcmVkJykge1xuICAgICAgICAgICAgICAgIHJldHVybiB0aGVtZTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgICByZXR1cm4gJ2xpZ2h0JztcbiAgICB9XG5cbiAgICBjb25zdCBnZXROb3RpZmljYXRpb25BdXRvQ2xvc2UgPSAobm90aWZpY2F0aW9uKSA9PiB7XG4gICAgICAgIGxldCBhdXRvQ2xvc2UgPSBwYXJzZUludChwcm9wcy5hdXRvQ2xvc2UuZ2V0KG5vdGlmaWNhdGlvbikudmFsdWUsIHVuZGVmaW5lZCk7XG4gICAgICAgIC8vIElmIGF1dG9jbG9zZSBpcyAwLCBzZXQgdG8gZmFsc2UsIHRoZW4gdXNlciBoYXMgdG8gY2xvc2UgbWVzc2FnZSBoaW1zZWxmXG4gICAgICAgIHJldHVybiBhdXRvQ2xvc2UgPT09IDAgPyBmYWxzZSA6IGF1dG9DbG9zZTtcbiAgICB9XG5cbiAgICBjb25zdCBnZXRQb3NpdGlvbiA9ICgpID0+IHtcbiAgICAgICAgLy8gQ29udmVydCBwb3NpdGlvblxuICAgICAgICBpZiAocHJvcHMucG9zaXRpb24gPT09ICd0b3BMZWZ0Jykge1xuICAgICAgICAgICAgcmV0dXJuICd0b3AtbGVmdCc7XG4gICAgICAgIH0gZWxzZSBpZiAocHJvcHMucG9zaXRpb24gPT09ICd0b3BSaWdodCcpIHtcbiAgICAgICAgICAgIHJldHVybiAndG9wLXJpZ2h0JztcbiAgICAgICAgfSBlbHNlIGlmIChwcm9wcy5wb3NpdGlvbiA9PT0gJ3RvcENlbnRlcicpIHtcbiAgICAgICAgICAgIHJldHVybiAndG9wLWNlbnRlcic7XG4gICAgICAgIH0gZWxzZSBpZiAocHJvcHMucG9zaXRpb24gPT09ICdib3R0b21SaWdodCcpIHtcbiAgICAgICAgICAgIHJldHVybiAnYm90dG9tLXJpZ2h0JztcbiAgICAgICAgfSBlbHNlIGlmIChwcm9wcy5wb3NpdGlvbiA9PT0gJ2JvdHRvbUxlZnQnKSB7XG4gICAgICAgICAgICByZXR1cm4gJ2JvdHRvbS1sZWZ0JztcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHJldHVybiAnYm90dG9tLWNlbnRlcic7XG4gICAgICAgIH1cbiAgICB9XG5cbiAgICBjb25zdCBnZXRUcmFuc2l0aW9uID0gKCkgPT4ge1xuICAgICAgICAvLyBDb252ZXJ0IHRyYW5zaXRpb24gcHJvcCB0byBhY3R1YWwgdHJhbnNpdGlvblxuICAgICAgICBpZiAocHJvcHMudHJhbnNpdGlvbiA9PT0gJ1NsaWRlJykge1xuICAgICAgICAgICAgcmV0dXJuIFNsaWRlO1xuICAgICAgICB9IGVsc2UgaWYgKHByb3BzLnRyYW5zaXRpb24gPT09ICdab29tJykge1xuICAgICAgICAgICAgcmV0dXJuIFpvb207XG4gICAgICAgIH0gZWxzZSBpZiAocHJvcHMudHJhbnNpdGlvbiA9PT0gJ0ZsaXAnKSB7XG4gICAgICAgICAgICByZXR1cm4gRmxpcDtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHJldHVybiBCb3VuY2U7XG4gICAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gPFRvYXN0Q29udGFpbmVyXG4gICAgICAgIHBvc2l0aW9uPXtnZXRQb3NpdGlvbigpfVxuICAgICAgICBjbG9zZUJ1dHRvbj17cHJvcHMuY2xvc2VCdXR0b259XG4gICAgICAgIGNsb3NlT25DbGljaz17cHJvcHMuY2xvc2VPbkNsaWNrfVxuICAgICAgICBkcmFnZ2FibGU9e3Byb3BzLmRyYWdnYWJsZX1cbiAgICAgICAgZHJhZ2dhYmxlUGVyY2VudD17cHJvcHMuZHJhZ2dhYmxlUGVyY2VudH1cbiAgICAgICAgdHJhbnNpdGlvbj17Z2V0VHJhbnNpdGlvbigpfVxuICAgICAgICBoaWRlUHJvZ3Jlc3NCYXI9e3Byb3BzLmhpZGVQcm9ncmVzc0Jhcn1cbiAgICAgICAgcGF1c2VPbkhvdmVyPXtwcm9wcy5wYXVzZU9uSG92ZXJ9XG4gICAgICAgIHBhdXNlT25Gb2N1c0xvc3M9e3Byb3BzLnBhdXNlT25Gb2N1c0xvc3N9XG4gICAgICAgIHJ0bD17cHJvcHMucnRsfVxuICAgICAgICBuZXdlc3RPblRvcD17cHJvcHMubmV3ZXN0T25Ub3B9XG4gICAgICAgIGxpbWl0PXtwcm9wcy5saW1pdC52YWx1ZSAmJiBwcm9wcy5saW1pdC52YWx1ZSA+IDAgPyBwcm9wcy5saW1pdC52YWx1ZSA6IHVuZGVmaW5lZH1cbiAgICAvPjtcbn1cblxuIl0sIm5hbWVzIjpbInIiLCJlIiwidCIsImYiLCJuIiwiQXJyYXkiLCJpc0FycmF5IiwibGVuZ3RoIiwiY2xzeCIsImFyZ3VtZW50cyIsInUiLCJpc05hTiIsImQiLCJwIiwibSIsIlIiLCJ3IiwiRmVlZGJhY2tOb3RpZmljYXRpb24iLCJwcm9wcyIsInVzZUVmZmVjdCIsImRhdGFzb3VyY2VOb3RpZmljYXRpb25zIiwiaXRlbXMiLCJpdGVtSW5kZXgiLCJub3RpZmljYXRpb24iLCJ0b2FzdCIsImdldE5vdGlmaWNhdGlvblRleHQiLCJ0eXBlIiwiZ2V0Tm90aWZpY2F0aW9uVHlwZSIsImF1dG9DbG9zZSIsImdldE5vdGlmaWNhdGlvbkF1dG9DbG9zZSIsImNsYXNzTmFtZSIsImdldE5vdGlmaWNhdGlvbkNsYXNzTmFtZSIsIm9uQ2xvc2UiLCJleGVjdXRlQ2xvc2VBY3Rpb24iLCJ0aGVtZSIsImdldE5vdGlmaWNhdGlvblRoZW1lIiwiaWNvbiIsImdldE5vdGlmaWNhdGlvblNob3dJY29uIiwiZXhlY3V0ZVNob3dBY3Rpb24iLCJvblNob3dBY3Rpb24iLCJnZXQiLCJjYW5FeGVjdXRlIiwiZXhlY3V0ZSIsIm9uQ2xvc2VBY3Rpb24iLCJub3RpZmljYXRpb25UZXh0IiwidmFsdWUiLCJzaG93SWNvbiIsInVuZGVmaW5lZCIsIm5vdGlmaWNhdGlvblR5cGUiLCJ0b0xvd2VyQ2FzZSIsIm5vdGlmaWNhdGlvblRoZW1lIiwicGFyc2VJbnQiLCJnZXRQb3NpdGlvbiIsInBvc2l0aW9uIiwiZ2V0VHJhbnNpdGlvbiIsInRyYW5zaXRpb24iLCJTbGlkZSIsIlpvb20iLCJGbGlwIiwiQm91bmNlIiwiY3JlYXRlRWxlbWVudCIsIlRvYXN0Q29udGFpbmVyIiwiY2xvc2VCdXR0b24iLCJjbG9zZU9uQ2xpY2siLCJkcmFnZ2FibGUiLCJkcmFnZ2FibGVQZXJjZW50IiwiaGlkZVByb2dyZXNzQmFyIiwicGF1c2VPbkhvdmVyIiwicGF1c2VPbkZvY3VzTG9zcyIsInJ0bCIsIm5ld2VzdE9uVG9wIiwibGltaXQiXSwibWFwcGluZ3MiOiI7O0FBQUEsU0FBU0EsQ0FBQ0EsQ0FBQ0MsQ0FBQyxFQUFDO0FBQUMsRUFBQSxJQUFJQyxDQUFDO0lBQUNDLENBQUM7QUFBQ0MsSUFBQUEsQ0FBQyxHQUFDLEVBQUUsQ0FBQTtFQUFDLElBQUcsUUFBUSxJQUFFLE9BQU9ILENBQUMsSUFBRSxRQUFRLElBQUUsT0FBT0EsQ0FBQyxFQUFDRyxDQUFDLElBQUVILENBQUMsQ0FBQyxLQUFLLElBQUcsUUFBUSxJQUFFLE9BQU9BLENBQUMsRUFBQyxJQUFHSSxLQUFLLENBQUNDLE9BQU8sQ0FBQ0wsQ0FBQyxDQUFDLEVBQUMsS0FBSUMsQ0FBQyxHQUFDLENBQUMsRUFBQ0EsQ0FBQyxHQUFDRCxDQUFDLENBQUNNLE1BQU0sRUFBQ0wsQ0FBQyxFQUFFLEVBQUNELENBQUMsQ0FBQ0MsQ0FBQyxDQUFDLEtBQUdDLENBQUMsR0FBQ0gsQ0FBQyxDQUFDQyxDQUFDLENBQUNDLENBQUMsQ0FBQyxDQUFDLENBQUMsS0FBR0UsQ0FBQyxLQUFHQSxDQUFDLElBQUUsR0FBRyxDQUFDLEVBQUNBLENBQUMsSUFBRUQsQ0FBQyxDQUFDLENBQUMsS0FBSyxLQUFJRCxDQUFDLElBQUlELENBQUMsRUFBQ0EsQ0FBQyxDQUFDQyxDQUFDLENBQUMsS0FBR0UsQ0FBQyxLQUFHQSxDQUFDLElBQUUsR0FBRyxDQUFDLEVBQUNBLENBQUMsSUFBRUYsQ0FBQyxDQUFDLENBQUE7QUFBQyxFQUFBLE9BQU9FLENBQUMsQ0FBQTtBQUFBLENBQUE7QUFBUSxTQUFTSSxJQUFJQSxHQUFFO0VBQUMsS0FBSSxJQUFJUCxDQUFDLEVBQUNDLENBQUMsRUFBQ0MsQ0FBQyxHQUFDLENBQUMsRUFBQ0MsQ0FBQyxHQUFDLEVBQUUsRUFBQ0QsQ0FBQyxHQUFDTSxTQUFTLENBQUNGLE1BQU0sR0FBRSxDQUFDTixDQUFDLEdBQUNRLFNBQVMsQ0FBQ04sQ0FBQyxFQUFFLENBQUMsTUFBSUQsQ0FBQyxHQUFDRixDQUFDLENBQUNDLENBQUMsQ0FBQyxDQUFDLEtBQUdHLENBQUMsS0FBR0EsQ0FBQyxJQUFFLEdBQUcsQ0FBQyxFQUFDQSxDQUFDLElBQUVGLENBQUMsQ0FBQyxDQUFBO0FBQUMsRUFBQSxPQUFPRSxDQUFDLENBQUE7QUFBQTs7TUNFcFZNLENBQUEsR0FBU1IsQ0FBQSxJQUNQLFFBQUEsSUFB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
